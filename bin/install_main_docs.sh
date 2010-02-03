#!/bin/sh
# Copyright (c) 2009 The Open Source Geospatial Foundation.
# Copyright (c) 2009 LISAsoft
# Copyright (c) 2009 Cameron Shorter
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
# This script will install documentation from 

# Running:
# =======
# sudo ./install_main_docs.sh

# Requires: nothing

USER_NAME="user"
USER_HOME="/home/$USER_NAME"
DEST="/usr/local/share/livedvd-docs"
FILES="banner.png arramagong.css" # base files to install
INSTALL_APPS=../install_list # List applications to install 
APPS=`sed -e 's/#.*$//' ${INSTALL_APPS}`

mkdir -p $DEST/doc


for ITEM in $FILES ; do
   # keep it at one file per line, as missing files tell us what is missing
   cp -f ../doc/"$ITEM" "$DEST/"
done
# index page start
cp -f ../doc/index_pre.html "$DEST/index.html"

# license page start
#cp -f ../doc/license_pre.html "$DEST/license.html"

for ITEM in $APPS ; do
   # Copy Descriptions:
   # keep it at one doc per line as missing files tell us which docs are missing
   if [ -e "../doc/descriptions/${ITEM}_description.html" ] ; then
      cp -f "../doc/descriptions/${ITEM}_description.html" "$DEST/doc/"
   else
     echo "ERROR: install_main_docs.sh: missing doc/descriptions/${ITEM}_description.html"
   fi

   # Copy Definitions:
   if [ -e "../doc/descriptions/${ITEM}_definition.html" ] ; then
      cat "../doc/descriptions/${ITEM}_definition.html" >> "$DEST/index.html"
   else
     echo "ERROR: install_main_docs.sh: missing doc/descriptions/${ITEM}_definition.html"
   fi

   # Copy Licenses:
   #if [ -e "../doc/descriptions/${ITEM}_license.html" ] ; then
   #   cat "../doc/descriptions/${ITEM}_license.html" >> "$DEST/license.html"
   #else
   #  echo "ERROR: install_main_docs.sh: missing doc/descriptions/${ITEM}_license.html"
   #fi
done

# index page end
cat ../doc/index_post.html >> "$DEST/index.html"

# license page end
#cat ../doc/license_post.html >> "$DEST/license.html"


# FIXME
echo "install_main_docs.sh FIXME: Double-check that the Firefox \
home page is now set to file://$DEST/index.html"
# ~user/mozilla/ has to exist first, so firefox would have need
#   to been started at least once to set it up

# edit ~user/.mozilla/firefox/$RANDOM.default/prefs.js:
#   user_pref("browser.startup.homepage", "file:///usr/local/share/livedvd-docs/index.html");

PREFS_FILE=`find "$USER_HOME/.mozilla/firefox/" | grep -w default/prefs.js | head -n 1`
if [ -n "$PREFS_FILE" ] ; then
   sed -i -e 's+\(homepage", "\)[^"]*+\1file:///usr/local/share/livedvd-docs/index.html+' \
      "$PREFS_FILE"

   # firefox snafu: needed for web apps to work if network is not there
   echo 'user_pref("toolkit.networkmanager.disable", true);' >> "$PREFS_FILE"
   # maybe being online won't stick, but we may as well try:
   echo 'user_pref("network.online", true);' >> "$PREFS_FILE"
fi

#Alternative, just put an icon on the desktop that launched firefox and points to index.html
\cp -f ../desktop-conf/arramagong-wombat-small.png  /usr/local/share/icons/


#What logo to use for launching the help?

ICON_FILE="live_GIS_help.desktop"

if [ ! -e "/usr/share/applications/$ICON_FILE" ] ; then
   cat << EOF > "/usr/share/applications/$ICON_FILE"
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Help
Comment=Live Demo Help
Categories=Application;Education;Geography;
Exec=firefox /usr/local/share/livedvd-docs/index.html
Icon=/usr/local/share/icons/arramagong-wombat-small.png
Terminal=false
StartupNotify=false
EOF
fi

\cp -a "/usr/share/applications/$ICON_FILE" "$USER_HOME/Desktop/"
chown $USER_NAME.$USER_NAME "$USER_HOME/Desktop/$ICON_FILE"
# executable bit needed for Ubunti 9.10's GNOME. Also make the first line
#   of the *.desktop files read "#!/usr/bin/env xdg-open"
#chmod u+x "$USER_HOME/Desktop/$ICON_FILE"


#Should we embed the password file in the help somehow too?
