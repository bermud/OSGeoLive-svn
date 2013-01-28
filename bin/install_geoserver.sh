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
#
# About:
# =====
# This script will install GeoServer in xubuntu
#
# Running:
# =======
# sudo ./install_geoserver.sh
#
# Requires: Sun Java {6|7} compatible runtime
#

echo "==============================================================="
echo "install_geoserver.sh"
echo "==============================================================="

TMP="/tmp/build_geoserver"
INSTALL_FOLDER="/usr/local/lib"
BIN="/usr/local/bin"
GS_VERSION="2.2.2"
GS_HOME="$INSTALL_FOLDER/geoserver-$GS_VERSION"
GS_PORT=8082
DOC_DIR="$GS_HOME/doc"


if [ -z "$USER_NAME" ] ; then
   USER_NAME="user"
fi
USER_HOME="/home/$USER_NAME"


### Setup things... ###
 
## check required tools are installed
if [ ! -x "`which wget`" ] ; then
   echo "ERROR: wget is required, please install it and try again" 
   exit 1
fi

### install_java.sh must run before this script
### TODO sanity check java setup here

### setup temp ###
mkdir -p "$TMP"
cd "$TMP"


### Download and unpack GeoServer ###

## get GeoServer
echo "Getting GeoServer"
wget -c --progress=dot:mega \
   -O geoserver-$GS_VERSION-bin.zip \
   "http://sourceforge.net/projects/geoserver/files/GeoServer/$GS_VERSION/geoserver-$GS_VERSION-bin.zip/download"

## unpack it to /usr/lib overwriting eventual existing copy
echo "Unpacking GeoServer in $GS_HOME"
unzip -o -q "geoserver-$GS_VERSION-bin.zip" -d "$INSTALL_FOLDER"



### Configure Application ###

## We need to make sure the scripts use the proper JDK version ##
echo "Configuring GeoServer script"
sed -i "1 i # Define Java home\nJAVA_HOME=/usr/lib/jvm/default-java; export JAVA_HOME\n# Force proper GeoServer home\nGEOSERVER_HOME=$GS_HOME; export GEOSERVER_HOME\n" \
   "$GS_HOME/bin/startup.sh"
sed -i "1 i # Define Java home\nJAVA_HOME=/usr/lib/jvm/default-java; export JAVA_HOME\n# Force proper GeoServer home\nGEOSERVER_HOME=$GS_HOME; export GEOSERVER_HOME\n" \
   "$GS_HOME/bin/shutdown.sh"

## Make Jetty run on a different port
sed -i -e "s/8080/$GS_PORT/g" "$GS_HOME"/etc/jetty.xml

## Add a script that will launch the browser after starting GS
cat << EOF > "$GS_HOME/bin/start_admin.sh"
#!/bin/sh

$GS_HOME/bin/startup.sh &

DELAY=40

(
for TIME in \`seq \$DELAY\` ; do
  sleep 1
  echo "\$TIME \$DELAY" | awk '{print int(0.5+100*\$1/\$2)}'
done
) | zenity --progress --auto-close --text "GeoServer starting"

# how to set 5 sec timeout?
zenity --info --text "Starting web browser ..."
firefox "http://localhost:$GS_PORT/geoserver/web/"
EOF

## Add a script that will stop GS and notify the user graphically
cat << EOF > "$GS_HOME/bin/stop_notify.sh"
$GS_HOME/bin/shutdown.sh
zenity --info --text "GeoServer stopped"
EOF

## Make the scripts executable
chmod 755 "$GS_HOME/bin/startup.sh"
chmod 755 "$GS_HOME/bin/start_admin.sh"
chmod 755 "$GS_HOME/bin/shutdown.sh"
chmod 755 "$GS_HOME/bin/stop_notify.sh"

## Allow the user to write in the GeoServer data dir

## Adding user to users group will ONLY work for installed system
## since live session user is only member of user group!!! 
## We DELETE user when build is done so this will not work on the live session

chgrp -R user "$GS_HOME/data_dir"
chgrp -R user "$GS_HOME/logs"
chmod -R g+w "$GS_HOME/data_dir"
chmod -R g+w "$GS_HOME/logs"

## link from bin directory
if [ ! -e "$BIN/geoserver_start.sh" ] ; then
  ln -s "$GS_HOME/bin/startup.sh" "$BIN/geoserver_start.sh"
fi
if [ ! -e "$BIN/geoserver_start_admin.sh" ] ; then
  ln -s "$GS_HOME/bin/start_admin.sh" "$BIN/geoserver_start_admin.sh"
fi
if [ ! -e "$BIN/geoserver_stop.sh" ] ; then
  ln -s "$GS_HOME/bin/shutdown.sh" "$BIN/geoserver_stop.sh"
fi
if [ ! -e "$BIN/geoserver_stop_notify.sh" ] ; then
  ln -s "$GS_HOME/bin/stop_notify.sh" "$BIN/geoserver_stop_notify.sh"
fi

### download the documentation

mkdir -p "$DOC_DIR"
echo "Getting GeoServer documentation"
wget --progress=dot:mega \
  -O "geoserver-$GS_VERSION-htmldoc.zip" \
  "http://sourceforge.net/projects/geoserver/files/GeoServer/$GS_VERSION/geoserver-$GS_VERSION-htmldoc.zip/download"

## unpack it
echo "Installing GeoServer documentation"
unzip -o -q "geoserver-$GS_VERSION-htmldoc.zip" -d "$DOC_DIR"


### install desktop icons ##
echo "Installing GeoServer icons"
cp -f "$USER_HOME/gisvm/app-conf/geoserver/geoserver_48x48.logo.png" \
       /usr/share/icons/

## start icon
cat << EOF > /usr/share/applications/geoserver-start.desktop
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Start GeoServer
Comment=GeoServer $GS_VERSION
Categories=Application;Geography;Geoscience;Education;
Exec=$BIN/geoserver_start_admin.sh
Icon=/usr/share/icons/geoserver_48x48.logo.png
Terminal=false
EOF

cp -a /usr/share/applications/geoserver-start.desktop "$USER_HOME/Desktop/"
chown -R "$USER_NAME":"$USER_NAME" "$USER_HOME/Desktop/geoserver-start.desktop"

## stop icon
cat << EOF > /usr/share/applications/geoserver-stop.desktop
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Stop GeoServer
Comment=GeoServer $GS_VERSION
Categories=Application;Geography;Geoscience;Education;
Exec=$BIN/geoserver_stop_notify.sh
Icon=/usr/share/icons/geoserver_48x48.logo.png
Terminal=false
EOF

cp -a /usr/share/applications/geoserver-stop.desktop "$USER_HOME/Desktop/"
chown -R "$USER_NAME":"$USER_NAME" "$USER_HOME/Desktop/geoserver-stop.desktop"

## admin console icon
cat << EOF > /usr/share/applications/geoserver-admin.desktop
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Admin GeoServer
Comment=GeoServer $GS_VERSION
Categories=Application;Geography;Geoscience;Education;
Exec=firefox "http://localhost:$GS_PORT/geoserver/"
Icon=/usr/share/icons/geoserver_48x48.logo.png
Terminal=false
EOF

cp -a /usr/share/applications/geoserver-admin.desktop "$USER_HOME/Desktop/"
chown -R "$USER_NAME":"$USER_NAME" "$USER_HOME/Desktop/geoserver-admin.desktop"

## styler console icon
########## DEAD URL ###################
# fgdrf : commentet, never referenced in quickstart guide
#cat << EOF > /usr/share/applications/geoserver-styler.desktop
#[Desktop Entry]
#Type=Application
#Encoding=UTF-8
#Name=Style GeoServer
#Comment=GeoServer ${GS_VERSION} Styler Extension
#Categories=Application;Geography;Geoscience;Education;
#Exec=firefox "http://localhost:$GS_PORT/geoserver/www/styler"
#Icon=/usr/share/icons/geoserver_48x48.logo.png
#Terminal=false
#EOF

## documentation icon
cat << EOF > /usr/share/applications/geoserver-docs.desktop
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=GeoServer documentation
Comment=GeoServer $GS_VERSION Documentation
Categories=Application;Geography;Geoscience;Education;
Exec=firefox "$DOC_DIR/user/index.html"
Icon=/usr/share/icons/geoserver_48x48.logo.png
Terminal=false
EOF

cp -a /usr/share/applications/geoserver-docs.desktop "$USER_HOME/Desktop/"
chown -R "$USER_NAME":"$USER_NAME" "$USER_HOME/Desktop/geoserver-docs.desktop"

## add sample styles per quickstart
mkdir /usr/local/share/geoserver
chgrp user /usr/local/share/geoserver
cp /usr/local/share/gisvm/app-data/geoserver/ne_10m*.sld /usr/local/share/geoserver/

## clean up eventual leftover Jetty cache directory
echo "Cleaning up Jetty JSP cache in /tmp"
rm -rf /tmp/Jetty*geoserver*

