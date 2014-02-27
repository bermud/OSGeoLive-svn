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
# This script will load Windows Installers for selected projects

# Running:
# =======
# cd ${CD}/win
# sudo ./load_win_installers.sh

# Requires: nothing

#Add the files to the directory where remastersys wants them
#TMP="/tmp/build_win_installers"
#TMP="/tmp/remastersys/ISOTMP/WindowsInstallers"
#Add the files where geniso remaster needs them
TMP="WindowsInstallers"
mkdir -p $TMP
cd $TMP

#echo "OSGeo software for Windows:  http://trac.osgeo.org/osgeo4w/" > README.txt
cat << EOF > README.txt
OSGeo Windows installers

 by Alex Mandel

TO INSTALL:
To install the application simply double click on the appropriate exe or
unzip a zip and read the README for each application. Some applications
have a 64bit version but only 32bit have been included here for
compatibility, check the web for newer or alternate versions. For more
information about the projects please read the help included in the live
disc or visit http://live.osgeo.org

osgeo4w-setup.exe is an application to help you install applications on
windows. Some of the same applications included here are also available
via OSGeo4w. The OSGeo4w tool includes the ability to manage upgrades,
install additional libraries and ensure compatability between mulitple
applications. Visit http://trac.osgeo.org/osgeo4w/ for more information.


Happy Mapping!
EOF



for URL in \
  http://download.osgeo.org/osgeo4w/osgeo4w-setup.exe \
  http://qgis.org/downloads/QGIS-OSGeo4W-1.8.0-2-Setup.exe \
  http://grass.osgeo.org/grass64/binary/mswindows/native/WinGRASS-6.4.3-1-Setup.exe \
  http://download.osgeo.org/livedvd/data/gpsbabel/GPSBabel-1.4.4-Setup.exe \
  http://github.com/downloads/mapbox/tilemill/TileMill-v0.10.1-Setup.exe \
  http://gpsvp.googlecode.com/files/gpsVPxp_0.4.24.zip \
  http://downloads.sourceforge.net/project/opencpn/opencpn/3.2.2/opencpn_3.2.2_setup.exe?use_mirror=cdnetworks-us-2 \
  http://download.osgeo.org/ossim/installers/windows/ossimplanet-installer-1.8.4.exe \
  http://sourceforge.net/projects/saga-gis/files/SAGA%20-%202.1/SAGA%202.1.0/saga_2.1.0_win32_setup.exe?use_mirror=cdnetworks-us-2 \
  http://download.osgeo.org/livedvd/data/zygrib/zyGrib_win-6.1.2.zip \
  http://download.osgeo.org/mapguide/releases/2.5.0/Release/MapGuideOpenSource-2.5.0.7449-Final-x86.exe \
  http://download.osgeo.org/fdo/3.8.0/release/binaries/win32/fdo-win32-3.8.0_3601.tar.gz \
  http://sourceforge.net/projects/geoserver/files/GeoServer/2.3.4/geoserver-2.3.4-bin.zip?use_mirror=cdnetworks-us-2 \
  http://download.osgeo.org/livedvd/data/mapwindow/MapWindowx86Full-v48Final-installer.exe \
; do
  # sourceforge filename sanitation:
  OUTFILE=`basename "$URL" | cut -f1 -d'?'`

  wget -c --no-check-certificate --progress=dot:mega "$URL" -O "$OUTFILE"
done;

# gvSIG is 161MB, maybe too big?
#Disabled because we ran out of space this time
#  http://downloads.gvsig.org/download/gvsig-desktop/dists/1.12.0/builds/1417/gvSIG-desktop-1.12.0-1417-final-win-x86-standard.exe \
#  http://udig.refractions.net/files/downloads/udig-1.3.2.win32.win32.x86.exe \
#  http://www.opensig.es/public/kosmo/v_2.0.1/binaries/kosmo_desktop_2.0.1_windows_jre_setup.exe \


#Disabled because they are very outdated
# http://maptiler.googlecode.com/files/maptiler-1.0-beta2-setup.exe   :: but it still works fine and is only 700kb..
# http://home.gdal.org/fwtools/FWTools247.exe \

# Disabled, we only do desktop apps
# http://downloads.sourceforge.net/geoserver/geoserver-2.1.4-bin.zip \
#  from the README:
#GeoServer:  geoserver-2.1.4-bin.zip in the Windows Installers cache also
#works on a Mac.


#FIXME:
#\mv "plan9.php?dl=gpsbabel-1.3.6.zip" gpsbabel-1.3.6.zip
# MapWindow also obfuscates the download URL.

  # FWTools
  # geonetwork
  # geoserver
  # GpsBabel + GUI (1.2mb)
  # gpsVP: (500kb)  http://code.google.com/p/gpsvp/
  # gvSIG
  # Kosmo
  # MapGuide Open Source
  # MapGuide Open Source (120mb)
  # MapTiler
  # ms4w
  # OpenCPN (8mb)
  # Ossim (30mb)
  # QGIS
  # SAGA (5.6mb)
  # udig
  # WinGRASS

