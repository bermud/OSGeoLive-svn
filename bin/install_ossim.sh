#!/bin/sh
#
# install_ossim.sh
#
#
# Created by Massimo Di Stefano on 07/12/09.
# Copyright (c) 2009 The Open Source Geospatial Foundation.
# Licensed under the GNU LGPL.

echo "==============================================================="
echo "install_ossim.sh"
echo "==============================================================="

if [ -z "$USER_NAME" ] ; then
   USER_NAME="user"
fi
USER_HOME="/home/$USER_NAME"
BUILD_DIR=`pwd`
APP_DATA_DIR="$BUILD_DIR/../app-data/ossim"
DATA_FOLDER="/usr/local/share/data"
#OSSIM_VERSION=1.8.12
#BUILD_DATE=20110704

#Add repositories

wget -nv https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/sources.list.d/ubuntugis.list \
     --output-document=/etc/apt/sources.list.d/ubuntugis.list

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 314DF160

sudo apt-get -q update

#temp solution
#apt-get install --assume-yes ossim-core

# install main dependencies
apt-get install --assume-yes libtiff4 libgeotiff2 libgdal1-1.9.0 \
  libfreetype6 libcurl3 libopenscenegraph80 libqt4-opengl \
  libexpat1 libpng3 libgdal1-1.9.0-grass libfftw3-3 libqt3-mt \
  libopenmpi1.3 libqt4-qt3support 

if [ $? -ne 0 ] ; then
   echo 'ERROR: Package install failed! Aborting.'
   exit 1
fi


# download ossim
mkdir -p /tmp/build_ossim
cd /tmp/build_ossim


########## tarball is compiled against the wrong ubuntu ###################
#if [ "false" = "true"  ] ; then
wget -N --progress=dot:mega http://epi.whoi.edu/osgeolive/ossim.tar.gz 
tar -zxf ossim.tar.gz
mv ossim /usr/local/
echo "/usr/local/ossim/
/usr/local/ossim/lib/" >> ossim.conf
mv ossim.conf /etc/ld.so.conf.d/
ldconfig

mkdir /usr/share/ossim/
wget -N --progress=dot:mega http://epi.whoi.edu/osgeolive/ossim_settings.tar.gz 
tar -zxf ossim_settings.tar.gz
mv ossim_settings/* /usr/share/ossim/

#patch for ticket https://trac.osgeo.org/osgeo/ticket/647 
sed -i -e 's/OsssimPlanet/OssimPlanet/g' /usr/share/ossim/ossimplanet.desktop

mv /usr/share/ossim/images/ossimPlanet.xpm /usr/share/pixmaps/ossimPlanet.xpm
mv /usr/share/ossim/images/ossim.xpm /usr/share/pixmaps/ossim.xpm
mv /usr/share/ossim/imagelinker.desktop /usr/share/applications/imagelinker.desktop
mv /usr/share/ossim/ossimplanet.desktop /usr/share/applications/ossimplanet.desktop

if [ `grep -c '/usr/local/ossim/bin' "$USER_HOME/.bashrc"` -eq 0 ] ; then
   echo 'PATH="$PATH:/usr/local/ossim/bin"' >> "$USER_HOME/.bashrc"
   echo "export PATH" >> "$USER_HOME/.bashrc"
   echo 'OSSIM_PREFS_FILE="/usr/share/ossim/ossim_preference"' >> "$USER_HOME/.bashrc"
   echo "export OSSIM_PREFS_FILE" >> "$USER_HOME/.bashrc"
   #source "$USER_HOME/.bashrc"
fi
# we know bashisms are safe in .BASHrc
if [ `grep -c '/usr/local/ossim/bin' "/etc/skel/.bashrc"` -eq 0 ] ; then
   echo 'export PATH="$PATH:/usr/local/ossim/bin"' >> "/etc/skel/.bashrc"
   echo 'OSSIM_PREFS_FILE="/usr/share/ossim/ossim_preference"' >> "/etc/skel/.bashrc"
   echo 'OSSIM_PREFS_FILE="/usr/share/ossim/ossim_preference"' >> "/etc/skel/.bashrc"
   echo "export OSSIM_PREFS_FILE" >> "$USER_HOME/.bashrc"
fi


# Additional dependence for Grass / Qgis plug-in :
#

apt-get install --assume-yes grass-core qgis python-pysqlite2 python-pygame \
   python-scipy python-serial python-psycopg2 proj-bin python-lxml \
   libqt4-core python-distutils-extra python-setuptools python-qscintilla2 
   # spyder

#???? apt-get install --assume-yes --force-yes python-scipy



# commented for now
#mkdir $USER_HOME/Desktop/PlanetSasha
#FIXME: Please do not use "chmod 777". Add to the "users" group and chmod g+w instead.
#chmod -R 777 $USER_HOME/Desktop/PlanetSasha

#FIXME: do not checkout directly to $USER_HOME. Use "svn export" to /usr/local/share/data/
#  instead, or svn co to /tmp/build_ossim/ then copy dir to /usr/local/share/data/ and
#  symlink into $HOME.
#svn co http://svn.osgeo.org/ossim/trunk/gsoc/PlanetSasha $USER_HOME/Desktop/PlanetSasha
#FIXME: Do not use chmod 777. see above.
#chmod -R 777 $USER_HOME/Desktop/PlanetSasha

#cp $USER_HOME/Desktop/PlanetSasha/grass_script/r.planet.py /usr/lib/grass64/scripts/
#cp $USER_HOME/Desktop/PlanetSasha/grass_script/v.planet.py /usr/lib/grass64/scripts/
#cp $USER_HOME/Desktop/PlanetSasha/grass_script/ogrTovrt.py /usr/lib/grass64/scripts/
#cp $USER_HOME/Desktop/PlanetSasha/grass_script/d.png.legend /usr/lib/grass64/scripts/

#FIXME: python-sphinx package needs to be installed first?

#hg clone https://spyderlib.googlecode.com/hg/ spyderlib
#cd spyderlib
#python setup.py install
#cd ..
#rm -rf spyderlib
#



cp /usr/share/applications/imagelinker.desktop "$USER_HOME/Desktop/"
chown "$USER_NAME.$USER_NAME" "$USER_HOME/Desktop/imagelinker.desktop"
sed -i -e 's/^Name=imagelinker/Name=Imagelinker/' "$USER_HOME/Desktop/imagelinker.desktop"

cp /usr/share/applications/ossimplanet.desktop "$USER_HOME/Desktop/"
chown "$USER_NAME.$USER_NAME" "$USER_HOME/Desktop/ossimplanet.desktop"

# add menu item
if [ ! -e /usr/share/menu/imagelinker ] ; then
   cat << EOF > /usr/share/menu/imagelinker
?package(imagelinker):needs="X11"\
  section="Applications/Science/Geoscience"\
  title="Imagelinker"\
  command="/usr/local/ossim/bin/imagelinker"\
  icon="/usr/share/pixmaps/ossim.xpm"
EOF
  update-menus
fi

if [ ! -e /usr/share/menu/ossimplanet ] ; then
   cat << EOF > /usr/share/menu/ossimplanet
?package(ossimplanet):needs="X11"\
  section="Applications/Science/Geoscience"\
  title="Ossimplanet"\
  command="/usr/local/ossim/bin/ossimplanet"\
  icon="/usr/share/pixmaps/ossimPlanet.xpm"
EOF
  update-menus
fi



########### end of commeted out old tarball ###############################

#Install the Manual and Intro guide locally and link them to the description.html
mkdir /usr/local/share/ossim

wget --progress=dot:mega "http://download.osgeo.org/ossim/docs/pdfs/ossim_users_guide.pdf" \
     --output-document=/usr/local/share/ossim/ossim_users_guide.pdf

#echo "FIXME: doesn't exist ==> 'ln -s /usr/share/doc/ossim-doc/ossimPlanetUsers.pdf /usr/local/share/ossim/'"

# pdf temporary stored on my ftp, waiting to add it on ossim download page.   
wget --progress=dot:mega "http://www.geofemengineering.it/data/OSSIM_Whitepaper.pdf" \
     --output-document=/usr/local/share/ossim/OSSIM_Whitepaper.pdf


#Download data used to test the application
KML_DATA="$DATA_FOLDER/kml"
RASTER_DATA="$DATA_FOLDER/raster"
ELEV_DATA=/usr/share/ossim/elevation/elev
#echo "FIXME: does VRT data actually ship anymore?"
VRT_DATA="$DATA_FOLDER/vrt"
QUICKSTART=/usr/local/share/ossim/quickstart


#mkdir -p "$KML_DATA"
mkdir -p "$RASTER_DATA"
mkdir -p "$ELEV_DATA"
#mkdir -p "$VRT_DATA"

#** DO NOT use chmod 777 **
# disabled: $KML_DATA
for ITEM in $RASTER_DATA $ELEV_DATA $VRT_DATA ; do
   chmod -R 775 "$ITEM"
   chgrp -R users "$ITEM"
done


DATA_URL="http://epi.whoi.edu/osgeolive/"
wget --progress=dot:mega $DATA_URL/ossim_data/p011r031_7t19990918_z19_nn10.tif  \
  --output-document=$RASTER_DATA/p011r031_7t19990918_z19_nn10.tif           
wget --progress=dot:mega $DATA_URL/ossim_data/p011r031_7t19990918_z19_nn20.tif  \
  --output-document=$RASTER_DATA/p011r031_7t19990918_z19_nn20.tif
wget --progress=dot:mega $DATA_URL/ossim_data/p011r031_7t19990918_z19_nn30.tif  \
  --output-document=$RASTER_DATA/p011r031_7t19990918_z19_nn30.tif
wget --progress=dot:mega $DATA_URL/ossim_data/SRTM_fB03_p011r031.tif  \
  --output-document=$RASTER_DATA/SRTM_fB03_p011r031.tif
wget --progress=dot:mega $DATA_URL/ossim_data/bluemarble.tif  \
--output-document=/usr/share/ossim/images/reference/bluemarble.tif
#wget --progress=dot:mega $DATA_URL/kml/Plaza_de_Cataluna.kmz \
#  --output-document=$KML_DATA/Plaza_de_Cataluna.kmz
#wget --progress=dot:mega $DATA_URL/kml/View_towards_Sagrada_Familia.kmz \
#  --output-document=$KML_DATA/View_towards_Sagrada_Familia.kmz

#wget --progress=dot:mega $DATA_URL/ossim_data/landsatrgb.prj \
#     --output-document=$PKG_DATA/landsatrgb.prj
#wget --progress=dot:mega $DATA_URL/ossim_data/session.session \
#     --output-document=$PKG_DATA/session.session
wget --progress=dot:mega $DATA_URL/ossim_preference \
--output-document=/usr/share/ossim/ossim_preference


wget --progress=dot:mega $DATA_URL/ossim_data/kml.tar.gz \
  --output-document=$KML_DATA/kml.tar.gz
tar -zxvf $KML_DATA/kml.tar.gz
rm -rf $KML_DATA/kml.tar.gz


apt-get --assume-yes install libjpeg62
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr "$RASTER_DATA/p011r031_7t19990918_z19_nn10.tif" "$RASTER_DATA/p011r031_7t19990918_z19_nn20.tif" "$RASTER_DATA/p011r031_7t19990918_z19_nn30.tif"
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo "$RASTER_DATA/p011r031_7t19990918_z19_nn10.tif" "$RASTER_DATA/p011r031_7t19990918_z19_nn20.tif" "$RASTER_DATA/p011r031_7t19990918_z19_nn30.tif"

OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr /usr/share/ossim/images/reference/bluemarble.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo /usr/share/ossim/images/reference/bluemarble.tif


#
/usr/bin/gdal_translate -ot Byte /home/user/data/north_carolina/rast_geotiff/lsat7_2002_10.tif /home/user/data/north_carolina/rast_geotiff/lsat7_2002_10_8bit.tif
/usr/bin/gdal_translate -ot Byte /home/user/data/north_carolina/rast_geotiff/lsat7_2002_20.tif /home/user/data/north_carolina/rast_geotiff/lsat7_2002_20_8bit.tif
/usr/bin/gdal_translate -ot Byte /home/user/data/north_carolina/rast_geotiff/lsat7_2002_30.tif /home/user/data/north_carolina/rast_geotiff/lsat7_2002_30_8bit.tif
/usr/bin/gdal_translate -ot Byte /home/user/data/north_carolina/rast_geotiff/lsat7_2002_40.tif /home/user/data/north_carolina/rast_geotiff/lsat7_2002_40_8bit.tif
/usr/bin/gdal_translate -ot Byte /home/user/data/north_carolina/rast_geotiff/lsat7_2002_50.tif /home/user/data/north_carolina/rast_geotiff/lsat7_2002_50_8bit.tif
/usr/bin/gdal_translate -ot Byte /home/user/data/north_carolina/rast_geotiff/lsat7_2002_61.tif /home/user/data/north_carolina/rast_geotiff/lsat7_2002_61_8bit.tif
/usr/bin/gdal_translate -ot Byte /home/user/data/north_carolina/rast_geotiff/lsat7_2002_62.tif /home/user/data/north_carolina/rast_geotiff/lsat7_2002_62_8bit.tif
/usr/bin/gdal_translate -ot Byte /home/user/data/north_carolina/rast_geotiff/lsat7_2002_70.tif /home/user/data/north_carolina/rast_geotiff/lsat7_2002_70_8bit.tif
/usr/bin/gdal_translate -ot Byte /home/user/data/north_carolina/rast_geotiff/lsat7_2002_80.tif /home/user/data/north_carolina/rast_geotiff/lsat7_2002_80_8bit.tif

rm /home/user/data/north_carolina/rast_geotiff/lsat7_2002_10.tif 
rm /home/user/data/north_carolina/rast_geotiff/lsat7_2002_20.tif 
rm /home/user/data/north_carolina/rast_geotiff/lsat7_2002_30.tif 
rm /home/user/data/north_carolina/rast_geotiff/lsat7_2002_40.tif 
rm /home/user/data/north_carolina/rast_geotiff/lsat7_2002_50.tif 
rm /home/user/data/north_carolina/rast_geotiff/lsat7_2002_61.tif 
rm /home/user/data/north_carolina/rast_geotiff/lsat7_2002_62.tif 
rm /home/user/data/north_carolina/rast_geotiff/lsat7_2002_70.tif 
rm /home/user/data/north_carolina/rast_geotiff/lsat7_2002_80.tif

OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr /home/user/data/north_carolina/rast_geotiff/lsat7_2002_10_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr /home/user/data/north_carolina/rast_geotiff/lsat7_2002_20_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr /home/user/data/north_carolina/rast_geotiff/lsat7_2002_30_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr /home/user/data/north_carolina/rast_geotiff/lsat7_2002_40_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr /home/user/data/north_carolina/rast_geotiff/lsat7_2002_50_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr /home/user/data/north_carolina/rast_geotiff/lsat7_2002_61_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr /home/user/data/north_carolina/rast_geotiff/lsat7_2002_62_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr /home/user/data/north_carolina/rast_geotiff/lsat7_2002_70_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-img2rr /home/user/data/north_carolina/rast_geotiff/lsat7_2002_80_8bit.tif

OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo /home/user/data/north_carolina/rast_geotiff/lsat7_2002_10_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo /home/user/data/north_carolina/rast_geotiff/lsat7_2002_20_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo /home/user/data/north_carolina/rast_geotiff/lsat7_2002_30_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo /home/user/data/north_carolina/rast_geotiff/lsat7_2002_40_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo /home/user/data/north_carolina/rast_geotiff/lsat7_2002_50_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo /home/user/data/north_carolina/rast_geotiff/lsat7_2002_61_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo /home/user/data/north_carolina/rast_geotiff/lsat7_2002_62_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo /home/user/data/north_carolina/rast_geotiff/lsat7_2002_70_8bit.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-create-histo /home/user/data/north_carolina/rast_geotiff/lsat7_2002_80_8bit.tif

OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-orthoigen --writer general_raster_bip /home/user/data/north_carolina/rast_geotiff/elevation.tif /usr/share/ossim/elevation/nc/elevation.ras
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-orthoigen --writer general_raster_bip /home/user/data/north_carolina/rast_geotiff/elev_lid792_1m.tif /usr/share/ossim/elevation/lidar/elev_lid792_1m.ras

mkdir /home/user/data/workspace
chmod g+w /home/user/data/workspace
chgrp users /home/user/data/workspace/

chmod g+w /usr/share/ossim/elevation
chgrp users /usr/share/ossim/elevation

# spearfish subset to VRT
SPEARFISH_RASTER=/home/user/grassdata/spearfish60/PERMANENT/cellhd/
#for i in $SPEARFISH_RASTER; do
#	gdal_translate -of VRT $SPEARFISH_RASTER/$i /home/user/data/workspace/$i.vrt



/usr/bin/gdal_translate -of VRT $SPEARFISH_RASTER/elevation.10m /home/user/data/workspace/elevation10m.vrt
/usr/bin/gdal_translate -of GTIFF -ot Float64 /home/user/data/workspace/elevation10m.vrt /home/user/data/workspace/elevation10m.tif
OSSIM_PREFS_FILE=/usr/share/ossim/ossim_preference /usr/local/ossim/bin/ossim-orthoigen -w general_raster_bip /home/user/data/workspace/elevation10m.tif /usr/share/ossim/elevation/spearfish/elevation10m.ras
rm -rf /home/user/data/workspace/elevation10m.tif
/usr/bin/gdal_translate -of VRT $SPEARFISH_RASTER/geology /home/user/data/workspace/geology.vrt




#COORDS="N40E002 N41E002 N42E002"
# ? N40 is corrupt and N42 is all zeros ?
#COORDS=" N41E002 "
#for COORD in $COORDS ; do
#   wget --progress=dot:mega "$DATA_URL/ossim_data/elev/$COORD.hgt" \
#        --output-document="/usr/share/ossim/elevation/elev/$COORD.hgt"
#   wget --progress=dot:mega "$DATA_URL/ossim_data/elev/$COORD.omd" \
#        --output-document="/usr/share/ossim/elevation/elev/$COORD.omd"
#done

cp -r "$APP_DATA_DIR" "$QUICKSTART"
ln -s "$QUICKSTART" "$USER_HOME"/ossim
# does the above symlink need to be owned by $USER?

ln -s "$QUICKSTART" /etc/skel/ossim

#  disabled: $KML_DATA
for dir in $QUICKSTART $RASTER_DATA ; do
  chgrp -R users $dir
  chmod -R g+w $dir
done

chmod 644 /usr/local/share/ossim/*.pdf


# cleanup
rm -rf "$QUICKSTART"/.svn

chown -R root.root /usr/local/ossim /usr/share/ossim
/usr/share/applications/
/usr/share/pixmaps/

echo "Finished installing Ossim"
