#!/bin/sh
# Copyright (c) 2009 The Open Source Geospatial Foundation.
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
# This is the master GISVM script which will build a GISVM from a base
# Xubuntu system, by calling a series of scripts for each package

# Running:
# =======
# sudo ./master.sh

# Customisation:
# =============
# You can customise the contents of the liveDVD by commenting out install
# scripts.


# Uninstall / Install all the base system packages: ssh, java, etc
# Set up configuration files
./setup.sh

#sun java 6
./install_sunjre6.sh

# Documentation
./install_main_docs.sh

# Postgres, Postgis and PGadmin3
./install_postgres.sh

# Mapserver
# Note: Manual steps involved in install process
./install_apache2.sh
./install_mapserver.sh

# Geoserver
./install_tomcat6.sh
./install_geoserver.sh

# install GeoNetwork
./install_geonetwork.sh

# install deegree
./install_deegree.sh

# install udig including sample data
./install_udig.sh

# install openjump including sample data
./install_openjump.sh

# install install_geokettle.sh
./install_geokettle.sh

# install grass including sample data
./install_grass.sh

# install mapnik
./install_mapnik.sh

./install_kosmo.sh
# Only installing stable software at the moment.
#./install_kosmo_2beta.sh

# Run after install_grass.sh
./install_maptiler.sh

# install marble which includes KDE
./install_marble.sh

# install QGIS including python and GRASS plugins
# Note: this depends upon Posgres and GRASS
./install_qgis.sh

# install pgRouting including sample data
# Note: Depends upon Postgres, and seems to load a lot of data
./install_pgrouting.sh

echo "Finished main.sh."
echo "Run sudo vmware-toolbox, and select shrink, to shrink the image"
exit

########################################################
# Scripts past here are not installed yet
########################################################
# remove packages only needed for building the above
./setdown.sh

# install MB System - software for mapping the Sea Floor
# This is experimental (according to install script)
./install_mb-system.sh

# install gpsdrive including LANDSAT maps for Sydney CBD
# Note: This takes a long time to download. It may have too much data.
# It then does a  a compile, and seems to cause dependancy problems.
./install_gpsdrive

