#!/bin/sh
# Copyright (c) 2009-2010 The Open Source Geospatial Foundation.
# Licensed under the GNU LGPL version >= 2.1.
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
# This script will install gvSIG 1.11 (BN1305) using
# a deb package.

# Changelog:   "svn log install_gvsig.sh --limit 10"
# ===========
# 2014-02-02
#  * Updated to gvSIG 2.1
#
# 2013-06-16
#   * Updated to gvSIG 2.0, no default project yet
#
# 2012-12-07
#   * Updated to use gvSIG 1.12 package
#
# 2012-07-15
#   * Updated to use a new 1.11 package with dependencies
#     solved and minor changes to this script
#
# 2011-07-03:
#   * updated to gvSIG 1.11, removed docs (BN 1305)
#
# 2011-01-24:
#   * updated to gvSIG 1.10 final version (BN 1264)
#
# 2010-07-02:
#   * updated to gvSIG 1.10 (BN 1255)
#
# 2010-03-13:
#   * removed usage of source command
#
# 2010-01-04: adapting the script to 1.9 stable release (jsanz@osgeo.org)
#   * Adapted dependencies
#   * Changed to the "with-jre" version because the Xubuntu 9.10 version
#     doesn't have the packages of Java 1.5

./diskspace_probe.sh "`basename $0`" begin
BUILD_DIR=`pwd`
####


# live disc's username is "user"
if [ -z "$USER_NAME" ] ; then
   USER_NAME="user"
fi

USER_HOME="/home/$USER_NAME"
USER_DESKTOP="$USER_HOME/Desktop"

GVSIG_PACKAGE="gvsig_2.1.0-2218_i386_BN2.deb"
GVSIG_URL="http://aiolos.survey.ntua.gr/gisvm/dev/"
#GVSIG_URL="http://downloads.gvsig.org/download/gvsig-desktop/other-dists/osgeo-live"
#GVSIG_URL="https://www.dropbox.com/s/6ujajdxa048pgii/"

# check required tools are installed
if [ ! -x "`which wget`" ] ; then
   echo "ERROR: wget is required, please install it and try again"
   exit 1
fi

# create tmp folders
TMP="/tmp/build_gvsig"
if [ ! -d "$TMP" ] ; then
   mkdir "$TMP"
fi
cd "$TMP"

# get deb package
if [ ! -e "$GVSIG_PACKAGE" ] ; then
   wget -c --progress=dot:mega "$GVSIG_URL/$GVSIG_PACKAGE"
fi

# remove it if it's present at the system
dpkg -l gvsig  > /dev/null 2> /dev/null
if [ $? -eq 0 ] ; then
   echo "Purging previous versions of gvSIG"
   apt-get -y purge gvsig
fi

if [ -d "$USER_HOME/gvSIG" ] ; then
   rm -rf "$USER_HOME/gvSIG"
fi

# install the deb package forcing the version
echo "Installing gvSIG package"
dpkg -i "$GVSIG_PACKAGE"

if [ $? -ne 0 ] ; then
   echo "ERROR: gvsig package failed to install"
   exit 1
fi

# fix broken permissions in the deb
chown -R root.root /opt/gvSIG_*

# user needs to write on the gvSIG folder by some legacy plugins
chgrp users /opt/gvSIG_*
chmod g+w /opt/gvSIG_*
adduser "$USER_NAME" users

# pkg lint cleanup
rm -f /debian-binary

chown -R root.root /usr/share/applications/gvsig.desktop \
  /usr/share/icons/ico-gvSIG.png /usr/share/mime/packages/gvsig.xml \
  /var/lib/dpkg/info/gvsig.*

rm "$TMP/$GVSIG_PACKAGE"

# place a gvSIG icon on desktop
if [ -d $USER_DESKTOP ] ; then
   echo "Copying icon to desktop at $USER_DESKTOP"
   cp /usr/share/applications/gvsig.desktop "$USER_DESKTOP"
   chown $USER_NAME:$USER_NAME "$USER_DESKTOP/gvsig.desktop"
   chmod +x "$USER_DESKTOP/gvsig.desktop"
fi

####
"$BUILD_DIR"/diskspace_probe.sh "`basename $0`" end
