#!/bin/sh
# Copyright (c) 2011 The Open Source Geospatial Foundation.
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
# Version: 2011-07-05
# Author: e.h.juerrens@52north.org
# TODO
# - add different data sets (small, medium, large) using a parameter beginning
#	this script
#
# About:
# =====
# This script installs 52nSOS
#
#
# =============================================================================
# Install script for 52nSOS
# =============================================================================
#
# Variables
# -----------------------------------------------------------------------------

echo "==============================================================="
echo "install_52nSOS.sh"
echo "==============================================================="

TMP="/tmp/build_52nSOS"
if [ -z "$USER_NAME" ] ; then
   USER_NAME="user"
fi
USER_HOME="/home/$USER_NAME"
TOMCAT_USER_NAME="tomcat6"
SOS_WAR_INSTALL_FOLDER="/var/lib/tomcat6/webapps"
SOS_INSTALL_FOLDER="/usr/local/52nSOS"
SOS_BIN_FOLDER="/usr/local/share/52nSOS"
SOS_TAR_NAME="52n-sensorweb-sos-osgeolive-6.5.0.tar.gz"
SOS_TAR_URL="http://52north.org/files/sensorweb/osgeo-live/"
# when changing this, adjust the name in line 215, too,
# and the quickstart, which links to this, too
SOS_WEB_APP_NAME="52nSOS"
SOS_POSTGRESQL_SCRIPT_NAME="postgresql"
PGOPTIONS='--client-min-messages=warning'
PG_POSTGIS_PATH="/usr/share/postgresql/9.1/contrib/postgis-2.0/"
POSTGRES_USER="postgres"
SOS_DB_NAME="52nSOS"
SOS_TOMCAT_SCRIPT_NAME="tomcat6"
SOS_ICON_NAME="52nSOS.png"
SOS_DATA_SET="DATA"
SOS_URL="http://localhost:8080/$SOS_WEB_APP_NAME"
SOS_QUICKSTART_URL="http://localhost/en/quickstart/52nSOS_quickstart.html"
SOS_OVERVIEW_URL="http://localhost/en/overview/52nSOS_overview.html"
# -----------------------------------------------------------------------------
#
echo "[$(date +%M:%S)]: 52nSOS install started"
echo "TMP: $TMP"
echo "USER_NAME: $USER_NAME"
echo "USER_HOME: $USER_HOME"
echo "TOMCAT_USER_NAME: $TOMCAT_USER_NAME"
echo "SOS_WAR_INSTALL_FOLDER: $SOS_WAR_INSTALL_FOLDER"
echo "SOS_INSTALL_FOLDER: $SOS_INSTALL_FOLDER"
echo "SOS_TAR_NAME: $SOS_TAR_NAME"
echo "SOS_TAR_URL: $SOS_TAR_URL"
echo "SOS_WEB_APP_NAME: $SOS_WEB_APP_NAME"
echo "SOS_POSTGRESQL_SCRIPT_NAME: $SOS_POSTGRESQL_SCRIPT_NAME"
echo "PGOPTIONS: $PGOPTIONS"
echo "PG_POSTGIS_PATH: $PG_POSTGIS_PATH"
echo "POSTGRES_USER: $POSTGRES_USER"
echo "SOS_DB_NAME: $SOS_DB_NAME"
echo "SOS_TOMCAT_SCRIPT_NAME: $SOS_TOMCAT_SCRIPT_NAME"
echo "SOS_ICON_NAME: $SOS_ICON_NAME"
echo "SOS_DATA_SET: $SOS_DATA_SET"
echo "SOS_URL: $SOS_URL"
echo "SOS_QUICKSTART_URL: $SOS_QUICKSTART_URL"
echo "SOS_OVERVIEW_URL: $SOS_OVERVIEW_URL"
#
#
# =============================================================================
# Pre install checks
# =============================================================================
# 1 wget
# 2 java
# 3 postgresql
# 4 tomcat6
#
#
#
# 1 WGET
# It is required to download the 52North SOS package:
#
if [ ! -x "`which wget`" ] ; then
   apt-get install wget
fi
#
#
#
# 2 Check for OpenJDK
#
if [ ! -x "`which java`" ] ; then
	apt-get -q update
	#
	apt-get --assume-yes install openjdk-7-jre
fi
#
#
#
# 3 postgresql
if [ -f "/etc/init.d/$SOS_POSTGRESQL_SCRIPT_NAME" ] ; then
   	echo "[$(date +%M:%S)]: $SOS_POSTGRESQL_SCRIPT_NAME service script found in /etc/init.d/."
else
	echo "[$(date +%M:%S)]: $SOS_POSTGRESQL_SCRIPT_NAME not found. Installing it..."
	apt-get install --assume-yes "$SOS_POSTGRESQL_SCRIPT_NAME"
fi
#
#
#
# 4 tomcat6
if [ -f "/etc/init.d/$SOS_TOMCAT_SCRIPT_NAME" ] ; then
   	echo "[$(date +%M:%S)]: $SOS_TOMCAT_SCRIPT_NAME service script found in /etc/init.d/."
else
	echo "[$(date +%M:%S)]: $SOS_TOMCAT_SCRIPT_NAME not found. Installing it..."
	apt-get install --assume-yes "$SOS_TOMCAT_SCRIPT_NAME" "${SOS_TOMCAT_SCRIPT_NAME}-admin"
fi
#
#
#
#
# =============================================================================
# The 52North SOS installation process
# =============================================================================
# 1 Download and Extract
# 2 Database set-up:
# 2.1 set-up SOS database using sql scripts
# 2.2 insert data
# 3 tomcat set-up
# 3.0 check for webapps folder in $SOS_WAR_INSTALL_FOLDER
# 3.1 mv war to webapps folder
# 3.2 change owner of war file
#
#
# 1 Download 52nSOS and extract tar.gz
#
# create the TMP directory
mkdir -p "$TMP"
cd "$TMP"
#
# download tar.gz from 52north.org server
if [ -f "$SOS_TAR_NAME" ] ; then
   echo "[$(date +%M:%S)]: $SOS_TAR_NAME has already been downloaded."
   # but was it sucessful?
else
	rm -v -r "$TMP"/*
   	wget -c --progress=dot:mega "$SOS_TAR_URL$SOS_TAR_NAME"
fi
#
# extract tar, if folders are not there
tar xzf "$SOS_TAR_NAME"
echo "[$(date +%M:%S)]: $SOS_TAR_NAME extracted"
#
# copy logo
if [ ! -e "/usr/share/icons/$SOS_ICON_NAME" ] ; then
   chmod 644 "$SOS_ICON_NAME"
   mv -v "$SOS_ICON_NAME" /usr/share/icons/
fi
#
#
# 2 database set-up
#
# we need to stop tomcat6 around this process
"/etc/init.d/$SOS_TOMCAT_SCRIPT_NAME" stop
echo "[$(date +%M:%S)]: installing SOS database structure in Postgresql DB..."
#
#	Check postgis_template installation
#
#POSTGIS="`su postgres -c 'psql -l' | grep template_postgis | wc -l`"
#echo "[$(date +%M:%S)]: POSTGIS $POSTGIS"
#if [ $POSTGIS -gt 0 ] ; then
	#echo "[$(date +%M:%S)]: database template_postgis already installed"
#else 
	#echo "[$(date +%M:%S)]: Installing template_postgis"
	#su $POSTGRES_USER -c 'createdb -E UTF8 -U postgres template_postgis'
	#su $POSTGRES_USER -c 'createlang -d template_postgis plpgsql;'
	#su $POSTGRES_USER -c 'psql -U $POSTGRES_USER -d template_postgis -c "CREATE EXTENSION hstore;"'
	#su $POSTGRES_USER -c 'psql -U $POSTGRES_USER -d template_postgis -f $PG_POSTGIS_PATHpostgis.sql'
	#su $POSTGRES_USER -c 'psql -U $POSTGRES_USER -d template_postgis -f $PG_POSTGIS_PATHpostgis_comments.sql'
	#su $POSTGRES_USER -c 'psql -U $POSTGRES_USER -d template_postgis -f $PG_POSTGIS_PATHspatial_ref_sys.sql'
	#su $POSTGRES_USER -c 'psql -U $POSTGRES_USER -d template_postgis -c "select postgis_lib_version();"'
	#su $POSTGRES_USER -c 'psql -U $POSTGRES_USER -d template_postgis -c "GRANT ALL ON geometry_columns TO PUBLIC;"'
	#su $POSTGRES_USER -c 'psql -U $POSTGRES_USER -d template_postgis -c "GRANT ALL ON spatial_ref_sys TO PUBLIC;"'
	#su $POSTGRES_USER -c 'psql -U $POSTGRES_USER -d template_postgis -c "GRANT ALL ON geography_columns TO PUBLIC;"'
	#echo "[$(date +%M:%S)]: finished postgis_template set-up"
#fi
#
#	Check for database installation
#
SOS_DB_EXISTS="`su postgres -c 'psql -l' | grep $SOS_DB_NAME | wc -l`"
if [ $SOS_DB_EXISTS -gt 0 ] ; then
	echo "[$(date +%M:%S)]: SOS db $SOS_DB_NAME exists -> drop it"
	su $POSTGRES_USER -c "dropdb $SOS_DB_NAME"
fi

echo "[$(date +%M:%S)]: Create SOS db"
su $POSTGRES_USER -c "createdb $SOS_DB_NAME"
sudo -u $POSTGRES_USER psql $SOS_DB_NAME -c 'create extension postgis;'
echo "[$(date +%M:%S)]: DB $SOS_DB_NAME created"


#
#	Set-Up 52nSOS database model

su $POSTGRES_USER -c "PGOPTIONS='$PGOPTIONS' psql -d $SOS_DB_NAME -q -f $TMP/SOS-structure.sql"
echo "[$(date +%M:%S)]: $SOS_DB_NAME -> SOS database model created"

#
#	Set-Up Example data model 
#
su postgres -c "psql -d $SOS_DB_NAME -q -f $TMP/STRUCTURE-in-SOS.sql"
echo "[$(date +%M:%S)]: $SOS_DB_NAME -> Example data model created"

#
#	Insert example observations
#
su $POSTGRES_USER -c "psql -d $SOS_DB_NAME -q -f $TMP/$SOS_DATA_SET.sql"
echo "[$(date +%M:%S)]: $SOS_DB_NAME -> Example observations inserted"
echo "[$(date +%M:%S)]: Database set-up finished"


# final tidy up
su $POSTGRES_USER -c "psql -d $SOS_DB_NAME -q -c 'VACUUM ANALYZE'"


#
#	Restart tomcat after database set-up
#
"/etc/init.d/$SOS_TOMCAT_SCRIPT_NAME" start

#
#
# 3.0 check for tomcat webapps folder
#
mkdir -p -v "$SOS_WAR_INSTALL_FOLDER"

#
#
# 3.1 check for tomcat set-up: look for service script in /etc/init.d/
#
if (test ! -d "$SOS_WAR_INSTALL_FOLDER/$SOS_WEB_APP_NAME") then
	mv -v "$TMP/$SOS_WEB_APP_NAME.war" "$SOS_WAR_INSTALL_FOLDER"/
 	chown -v -R $TOMCAT_USER_NAME:$TOMCAT_USER_NAME \
	   "$SOS_WAR_INSTALL_FOLDER/$SOS_WEB_APP_NAME.war"
	echo "[$(date +%M:%S)]: $SOS_WEB_APP_NAME installed in tomcat webapps folder"
else
	echo "[$(date +%M:%S)]: $SOS_WEB_APP_NAME already installed in tomcat"
fi

#
#
#
# Startup/Stop scripts set-up
# =============================================================================
mkdir -p "$SOS_BIN_FOLDER"
chgrp users "$SOS_BIN_FOLDER"

if [ ! -e $SOS_BIN_FOLDER/52nSOS-start.sh ] ; then
   cat << EOF > $SOS_BIN_FOLDER/52nSOS-start.sh
#!/bin/bash
STAT=\`sudo service tomcat6 status | grep pid\`
if [ "\$STAT" = "" ]; then
    sudo service tomcat6 start
    (sleep 2; echo "25"; sleep 2; echo "50"; sleep 2; echo "75"; sleep 2; echo "100") | zenity --progress --auto-close --text "52North SOS starting"
fi
firefox $SOS_URL $SOS_QUICKSTART_URL $SOS_OVERVIEW_URL
EOF
fi

if [ ! -e $SOS_BIN_FOLDER/52nSOS-stop.sh ] ; then
   cat << EOF > $SOS_BIN_FOLDER/52nSOS-stop.sh
#!/bin/bash
STAT=\`sudo service tomcat6 status | grep pid\`
if [ "\$STAT" != "" ]; then
    sudo service tomcat6 stop
    zenity --info --text "52North SOS stopped"
fi
unset STAT
EOF
fi

chmod 755 $SOS_BIN_FOLDER/52nSOS-start.sh
chmod 755 $SOS_BIN_FOLDER/52nSOS-stop.sh

#
#
#
# Desktop set-up
# =============================================================================

mkdir -p -v "$USER_HOME/Desktop"

# icon
# Relies on launchassist in home dir
if [ ! -e /usr/share/applications/52nSOS-start.desktop ] ; then
   cat << EOF > /usr/share/applications/52nSOS-start.desktop
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Start 52NorthSOS
Comment=52North SOS
Categories=Geospatial;Servers;
Exec=$SOS_BIN_FOLDER/52nSOS-start.sh
Icon=/usr/share/icons/$SOS_ICON_NAME
Terminal=false
EOF
fi

#
cp -v /usr/share/applications/52nSOS-start.desktop "$USER_HOME/Desktop/"
chown -v $USER_NAME:$USER_NAME "$USER_HOME/Desktop/52nSOS-start.desktop"

if [ ! -e /usr/share/applications/52nSOS-stop.desktop ] ; then
   cat << EOF > /usr/share/applications/52nSOS-stop.desktop
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Stop 52NorthSOS
Comment=52North SOS
Categories=Geospatial;Servers;
Exec=$SOS_BIN_FOLDER/52nSOS-stop.sh
Icon=/usr/share/icons/$SOS_ICON_NAME
Terminal=false
EOF
fi

cp -v /usr/share/applications/52nSOS-stop.desktop "$USER_HOME/Desktop/"
chown -v $USER_NAME:$USER_NAME "$USER_HOME/Desktop/52nSOS-stop.desktop"

#
# We just crossed the finish line
#
echo "[$(date +%M:%S)]                                                         "
echo "                         52nSOS install finished                         "
echo "#########################################################################"

