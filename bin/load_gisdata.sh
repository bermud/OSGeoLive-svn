#!/bin/sh
#################################################
#
# Purpose: Install common geodata, including:
#    - A sample of the Natural Earth Datasets
#    - The OSGeo North Carolina common dataset
#    [OpenStreetMap data is installed by the install_osm script]
# Source:  http://www.naturalearthdata.com
#
#################################################
# Copyright (c) 2010-2011 Open Source Geospatial Foundation (OSGeo)
# Copyright (c) 2009 LISAsoft
#
# Licensed under the GNU LGPL.
#
# This is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License,
# or any later version.  This program is distributed in the hope that
# it will be useful, but WITHOUT ANY WARRANTY, without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Lesser General Public License for more details, either
# in the "LICENSE.LGPL.txt" file distributed with this software or at
# the web page "http://www.fsf.org/licenses/lgpl.html".
##################################################

echo "==============================================================="
echo "load_gisdata.sh"
echo "==============================================================="

TMP="/tmp/build_gisdata"
DATA_FOLDER="/usr/local/share/data"
NE2_DATA_FOLDER="$DATA_FOLDER/natural_earth2"
POSTGRES_USER="user"

## Setup things... ##
if [ ! -d "$DATA_FOLDER" ] ; then
   mkdir -p "$DATA_FOLDER"
fi

# check required tools are installed
if [ ! -x "`which wget`" ] ; then
   echo "ERROR: wget is required, please install it and try again"
   exit 1
fi

## 12dec12 atlasstyler no longer installed, however no change needed
if [ ! -x "`which atlasstyler`" ] ; then
   echo "WARNING: atlasstyler is not install, using ogrinfo instead to create .qix files for Natural Earth shapefiles"
#   echo "ERROR: atlasstyler is required as a tool to create .fix and .qix files for all shapefiles, please install it with bin/install_atlasstyler.sh and try again"
   HAS_ATLASSTYLER=0
else
   HAS_ATLASSTYLER=1
fi

##------------------------
# create tmp folders
mkdir "$TMP"
cd "$TMP"


##################################
# Download natural earth datasets:
#  nov12: data 2.0 to postgis 2.0

mkdir -p "$NE2_DATA_FOLDER"

BASE_URL="http://www.naturalearthdata.com"

USE_NE_UNMODIFIED=false		# live 4.5b1 process hack

if $USE_NE_UNMODIFIED; then

SCALE="10m"  # 1:10 million

# Simple Populated Places 1:10m
#    http://www.naturalearthdata.com/downloads/10m-cultural-vectors/
# Admin 0 - Countries 1:10m
# Populated Places (simple, less columns) 1:10m 
# Land 1:10m 
# Ocean 1:10m 
# Lakes + Reservoirs 1:10m 
# Rivers, Lake Ceterlines 1:10m 

LAYERS="
cultural/$SCALE-populated-places-simple
cultural/$SCALE-admin-0-countries
cultural/$SCALE-admin-1-states-provinces-shp
cultural/$SCALE-urban-area
physical/$SCALE-geography-regions-polys
physical/$SCALE-geography-regions-points
physical/$SCALE-geography-regions-elevation-points
physical/$SCALE-geography-marine-polys
physical/$SCALE-land
physical/$SCALE-ocean
physical/$SCALE-lakes
physical/$SCALE-rivers-lake-centerlines
"

    if [ ! -e $TMP/"$SCALE_populated_places_simple.zip" ]; then
      for LAYER in $LAYERS ; do
    	     wget --progress=dot:mega -O "`basename $LAYER`.zip" \
    	       "$BASE_URL/http//www.naturalearthdata.com/download/$SCALE/$LAYER.zip"
      done  
    fi

    # Unzip files into the gisdata directory
    for file in *.zip ; do
      unzip -q "$file" -d "$DATA_FOLDER/natural_earth"
    done

else
    ## use a pre-built vectors set rather than naturalearthdata URLs
    wget -c --progress=dot:mega http://download.osgeo.org/livedvd/data/natural_earth2/all_10m_20.tgz
    tar xzf all_10m_20.tgz
    for tDir in ne_10m_*; do
       mv "$tDir"/* "$NE2_DATA_FOLDER"
    done
fi

## Get Raster basemap -- Cross Blended Hypso with Shaded Relief and Water 1:50 million (40mb)
RFILE="HYP_50M_SR_W.zip"
wget -c --progress=dot:mega \
	"$BASE_URL/http//www.naturalearthdata.com/download/50m/raster/$RFILE"
unzip -q "$RFILE" -d "$NE2_DATA_FOLDER"

##--------------------------------
if [ $HAS_ATLASSTYLER = 1 ]; then
  # Add Geotools .fix and .qix files to all Shapefiles. Normally Geotools application would create these
  # files when opeing the Shapefile, but since the data-dir is read-only, we do it here.
  # This REQUIRES that install_atlasstyler.sh has been executed before (which is checked above)
  find "$NE2_DATA_FOLDER" -iname "*.shp" -exec atlasstyler "addFix={}" \;
else
  # Plan B: use ogrinfo instead
  cd "$NE2_DATA_FOLDER"
  for SHP in *.shp; do \
        S=`basename $SHP .shp`
        ogrinfo -sql "CREATE SPATIAL INDEX ON $S" $SHP;
  done
  cd "$TMP"
  # fixme: Is there a need to walk thru other folders as well??
fi

##--------------------------------
chmod a+r "$NE2_DATA_FOLDER"     ## read the data dir
chmod 444 "$NE2_DATA_FOLDER"/*   ##  and all files in it
chmod -R +X "$NE2_DATA_FOLDER"   ## but keep x on directories
chown -R root.root "$NE2_DATA_FOLDER"

##--------------------------------------
## load natural earth 2 data into postgis 2
##  TODO dec12 check locale results and update this
SRC_DIR="$NE2_DATA_FOLDER"
sudo -u $POSTGRES_USER createdb natural_earth2
sudo -u $POSTGRES_USER psql natural_earth2 -c 'create extension postgis;'
# 1/2013 Needed for Kosmo and gvSIG:
sudo -u $POSTGRES_USER psql natural_earth2 \
  -f /usr/share/postgresql/9.1/contrib/postgis-2.0/legacy.sql

for n in "$SRC_DIR"/*.shp;
do
  shp2pgsql -W LATIN1 -s 4326 -I -g the_geom "$n" | \
     sudo -u $POSTGRES_USER psql --quiet natural_earth2
done

sudo -u $POSTGRES_USER psql natural_earth2 --quiet -c "vacuum analyze"



#################################################
# Download the North Carolina sample dataset
#  contact: geodata at lists dot osgeo.org
# about: http://www.grassbook.org/data_menu3rd.php
# license: Creative Commons
# metadata index: http://www.grassbook.org/ncexternal/nc_datalist.html

# grab shapefiles, geotiffs, and KMLs (~100mb total)
FILES="shape rast_geotiff kml"
BASE_URL="http://grass.osgeo.org/sampledata/north_carolina"

cd "$TMP"
mkdir -p nc_data
cd nc_data
for FILE in $FILES ; do
   wget -N --progress=dot:mega "$BASE_URL/nc_$FILE.tar.gz"
done

#and install them ...
mkdir -p "$DATA_FOLDER/north_carolina"
cd "$DATA_FOLDER/north_carolina"
for FILE in $FILES ; do
   mkdir -p $FILE
   cd $FILE
   tar xzf "$TMP/nc_data/nc_$FILE.tar.gz"
   mv nc*/* .
   rmdir nc*/
   cd ..
done
chown -R root.root "$DATA_FOLDER/north_carolina"

