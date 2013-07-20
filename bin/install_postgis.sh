#!/bin/sh
# Copyright (c) 2009 The Open Source Geospatial Foundation.
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
# This script will install postgres, postgis, and pgadmin3
#
#   Q. how about libpostgis-java ?
#
# --- to start postgres -----
# sudo /etc/init.d/postgresql-9.1 start
#

./diskspace_probe.sh "`basename $0`" begin
BUILD_DIR=`pwd`
####


if [ -z "$USER_NAME" ] ; then
   USER_NAME="user"
fi
USER_HOME="/home/$USER_NAME"

TMP_DIR="/tmp/build_postgis"

# Not to be confused with PGIS_Version, this has one less number and period
#  to correspond to install paths
PG_VERSION="9.1"


#debug:
echo "The locale settings are currently:"
locale

# DB is created in the current locale, which was reset to "C". Put it
#  back to UTF so the templates will be created using UTF8 encoding.
unset LC_ALL

# another debug
locale


# now avail from mainline
apt-get install --yes postgis "postgresql-$PG_VERSION-postgis-2.0"

if [ $? -ne 0 ] ; then
   echo 'ERROR: Package install failed! Aborting.'
   exit 1
fi

apt-get install --yes pgadmin3

### config ###

#set default user/password to the system user for easy login
sudo -u postgres createuser --superuser $USER_NAME

echo "alter role \"user\" with password 'user'" > /tmp/build_postgre.sql
sudo -u postgres psql -f /tmp/build_postgre.sql
# rm /tmp/build_postgre.sql

#add a gratuitous db called user to avoid psql inconveniences
sudo -u $USER_NAME createdb -E UTF8 $USER_NAME
sudo -u "$USER_NAME" psql -d "$USER_NAME" -c 'VACUUM ANALYZE;'


## 27nov12 - no longer needed for postgis 2.0 / pg 9.1
#configure template postgis database
#sudo -u $USER_NAME createdb -E UTF8 -T template0 template_postgis
# sudo -u $USER_NAME createlang plpgsql template_postgis -- no longer needed for pg9.1
# Allows non-superusers the ability to create from this template, from GeoDjango manual
#sudo -u $USER_NAME psql -1 -d postgres \
#  -c "UPDATE pg_database SET datistemplate='true' WHERE datname='template_postgis';"

## Jul10 resolved location of postgis.sql
#pgis_file="/usr/share/postgresql/$PG_VERSION/contrib/postgis-1.5/postgis.sql"

#sudo -u $USER_NAME psql --quiet -d template_postgis -f "$pgis_file"
#sudo -u $USER_NAME psql --quiet -v ON_ERROR_STOP=1 -d template_postgis \
#   -f /usr/share/postgresql/$PG_VERSION/contrib/postgis-1.5/spatial_ref_sys.sql


#include pgadmin3 profile for connection
for FILE in  pgadmin3  pgpass  ; do
    cp ../app-conf/postgis/"$FILE" "$USER_HOME/.$FILE"

    chown $USER_NAME:$USER_NAME "$USER_HOME/.$FILE"
    chmod 600 "$USER_HOME/.$FILE"
done
#cp .pgadmin3 .pgpass /etc/skel


### load data ###
#see load_postgis.sh


####
"$BUILD_DIR"/diskspace_probe.sh "`basename $0`" end
