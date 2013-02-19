#!/bin/sh
# Copyright (c) 2009-2012 The Open Source Geospatial Foundation.
# Licensed under the GNU LGPL.
# 
# This library is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License,
# or any later version.  This library is distributed in the hope that
# it will be useful, but WITHOUT ANY WARRANTY, without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Lesser General Public License for more details, either
# in the "LICENSE.LGPL.txt" file distributed with this software or at
# web page "http://www.fsf.org/licenses/lgpl.html".

# About:
# =====
# This script will cleanup the system after running GISVM install scripts.

# Running:
# =======
# sudo ./setdown.sh 2>&1 | tee /var/log/osgeolive/setdown.log

echo "==============================================================="
echo "setdown.sh"
echo "==============================================================="

if [ -z "$USER_NAME" ] ; then
   USER_NAME="user"
fi
USER_HOME="/home/$USER_NAME"

DIR=`dirname ${0}`
VERSION=`cat ${DIR}/../VERSION.txt`
PACKAGE_NAME="osgeolive"
VM="${PACKAGE_NAME}-${VERSION}"


# by removing the 'user', it also meant that 'user' was removed from /etc/group
#  so we have to put it back at boot time.
if [ `grep -c 'adduser' /etc/rc.local` -eq 0 ] ; then
    sed -i -e 's|exit 0||' /etc/rc.local

    GRPS="audio dialout fuse pulse staff tomcat6 users www-data"

    for GRP in $GRPS ; do
       echo "adduser $USER_NAME $GRP" >> /etc/rc.local
    done
    echo >> /etc/rc.local
    echo "exit 0" >> /etc/rc.local
fi
# try to get those changes applied sooner
mv /etc/rc2.d/S99rc.local /etc/rc2.d/S10rc.local

# re-enable ability to create persistent USB installs on a 4gb thumb drive
sed -i -e 's/\(^MIN_PERSISTENCE =\) .*/\1 256/' \
   /usr/lib/python2.7/dist-packages/usbcreator/misc.py

# remove build stuff no longer of use
apt-get --yes remove devscripts pbuilder \
   svn-buildpackage \
   lintian debhelper pkg-config dpkg-dev

apt-get --yes remove python2.7-dev

# libgdal-dev, libpq-dev, and grass-dev get installed and uninstalled
# so many times it's hard to keep track. let's install them one final
# time just to be sure they make it on...
# grass-dev will depend on libgdal-dev or libgdal1-dev as needed, so
#  during the transition we'll let gdal just be implicit. libpq-dev will
#  also be pulled in automatically by this.
apt-get install --assume-yes grass-dev


apt-get --yes autoremove

# now that everything is installed rebuild library search cache
ldconfig


#shrink help page images
# echo "Shrinking images, please wait as this may take some time ..."

# cd /var/www/
# # instrument it to see if it's worth the effort (takes 2.25 minutes, saves <1mb)
# echo "`date`: /var/www takes `du -sm /var/www | cut -f1` mb"
# optipng -quiet -o5 `find | grep '\.png$' | grep -v './_images/'`
# echo "`date`: /var/www takes `du -sm /var/www | cut -f1` mb"
# cd -
#
# cd /usr/local/
# # takes 32 minutes, saves 5mb
# echo "`date`: /usr/local takes `du -sm /usr/local | cut -f1` mb"
# optipng -quiet -o5 `find | grep '\.png$' | grep -v gisvm`
# echo "`date`: /usr/local takes `du -sm /usr/local | cut -f1` mb"
# cd -
# maybe do this after fslint so that hardlink'd dupes get done too?


#### Check how much space is wasted by double files in /usr
# Checking which duplicate files are present can be useful to save
#  disk space manually.
# The actual hardlinking of duplicate /usr files is done at the last
#  minute in build_iso.sh.
# FSLINT_LOG=/tmp/build_lint/dupe_files.txt
# mkdir -p `dirname "$FSLINT_LOG"`
# echo "Scanning for duplicate files ..."
# /usr/share/fslint/fslint/findup --summary /usr /opt /lib > "$FSLINT_LOG"
# /usr/share/fslint/fslint/fstool/dupwaste < "$FSLINT_LOG"


#### Copy tmp files, apt cache and logs ready for backup
mkdir "/tmp/$VERSION"
cd "/tmp/$VERSION"

mkdir "${VM}-tmp"
mv /tmp/build* "${VM}-tmp"
#mv /tmp/*downloads ${VM}-tmp

ln -s /var/log/osgeolive/ "${VM}-log"

#Copy the cache to tmp for backing up
cp -R /var/cache/apt/ "${VM}-apt-cache"
# remove the apt-get cache
apt-get clean

echo "linux-image-generic install" | dpkg --set-selecions

rm -fr \
  "$USER_HOME"/.bash_history \
  "$USER_HOME"/.ssh \
  "$USER_HOME"/.subversion \
  # /tmp/* \ # tmp is cleared during shutdown

  # Do we need the following:
  # "$USER_HOME"/.cache \
  # "$USER_HOME"/.config \
  # "$USER_HOME"/.dbus \


# clean out ssh keys which should be machine-unique
rm -f /etc/ssh/ssh_host_*_key*
# change a stupid sshd default
sed -i -e 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config

# This is done on an extra step after rebooting and tmp is cleared
#echo "==============================================================="
#echo " Compress image by wiping the virtual disk, filling empty space with zero."
#cat /dev/zero > zero.fill ; sync ; sleep 1 ; sync ; rm -f zero.fill

echo "==============================================================="
echo "Finished setdown.sh. Copy backup files and logs to the host system with:"
echo "scp -pr /tmp/$VERSION username@hostname:/directory"
