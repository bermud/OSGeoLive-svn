#!/bin/sh
# Copyright (c) 2009 The Open Source Geospatial Foundation.
# Licensed under the GNU LGPL.
# 
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License,
# or any later version.  This program is distributed in the hope that
# it will be useful, but WITHOUT ANY WARRANTY, without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Lesser General Public License for more details, either
# in the "LICENSE.LGPL.txt" file distributed with this software or at
# web page "http://www.fsf.org/licenses/lgpl.html".

# About:
# =====
# This script will install ushahidi

# Running:
# =======
# sudo ./install_ushahidi.sh

# Requires: Apache2, PHP5 mysql-server
#
# more install instructions can be found here /usr/share/ushahidi/readme.html
#
# Uninstall:
# ============
# sudo rm -rf /var/www/ushahidi/

echo "==============================================================="
echo "install_ushahidi.sh"
echo "==============================================================="

# live disc's username is "user"
if [ -z "$USER_NAME" ] ; then
   USER_NAME="user"
fi
USER_HOME="/home/$USER_NAME"
TMP_DIR="/tmp/build_ushahidi"
mkdir -p "$TMP_DIR"

# Install ushahidi dependencies.
echo "Installing ushahidi"

apt-get --assume-yes install php5 php5-mcrypt php5-curl apache2 \
   php5-gd php5-imap mysql-server libapache2-mod-php5 php5-mysql 

if [ ! -x "`which wget`" ] ; then
    echo "ERROR: wget is required, please install it and try again"
    exit 1
fi

cd "$TMP_DIR"

# the archive changed from .tgz to .zip updating accordingly 
if [ ! -e "ushahidi.zip" ] ; then 
   wget -O ushahidi.zip --progress=dot:mega \
      "http://download.ushahidi.com/track_download.php?download=ushahidi"
else
    echo "... Ushahidi already downloaded"
fi

# uncompress ushahidi
unzip -q "ushahidi.zip"
mkdir /usr/local/share/ushahidi

# delete the zip file to leave only the extracted folder
rm ushahidi.zip

# now rename the extracted folder to ushahidi
mv * ushahidi

#now copy the ushahidi folder to a different location
cp -R ushahidi/ /usr/local/share/
ln -s /usr/local/share/ushahidi /var/www/ushahidi
chown -R www-data:www-data /usr/local/share/ushahidi

#check if mysql is running and do appropriate action
if [ `ps aux | grep -c 'mysql'` -eq 0 ] ; then
    echo "Starting mysql.."
    service mysql start
else
    echo "Restarting mysql.."
    service mysql restart
fi

## (Note: on installing mysql-server you should have been prompted to
##  create a new root password. Repeat that here)
MYSQL_ADMIN_NM="user"
MYSQL_ADMIN_PW="user"
echo "
CREATE DATABASE ushahidi;
GRANT ALL PRIVILEGES ON ushahidi.* TO 'user'@'localhost' IDENTIFIED BY 'user';
" | mysql -u"$MYSQL_ADMIN_NM" -p"$MYSQL_ADMIN_PW"


# tweak apache to allow Clean URLs
cat << EOF > "$TMP_DIR/allow_htaccess.patch"
--- /etc/apache2/sites-enabled/000-default.ORIG	2010-07-14 20:49:54.6 +1200
+++ /etc/apache2/sites-enabled/000-default	2010-07-14 20:50:07.9 +1200
@@ -8,7 +8,7 @@
 	</Directory>
 	<Directory /var/www/>
 		Options Indexes FollowSymLinks MultiViews
-		AllowOverride None
+		AllowOverride All
 		Order allow,deny
 		allow from all
 	</Directory>
EOF

if [ `grep -c 'AllowOverride All' /etc/apache2/sites-enabled/000-default` -eq 0 ] ; then
  patch -p0 < "$TMP_DIR/allow_htaccess.patch"
fi

a2enmod rewrite

echo "Restarting apache2..."
service apache2 restart


#Add Launch icon to desktop
if [ ! -e /usr/share/applications/ushahidi.desktop ] ; then
   cat << EOF > /usr/share/applications/ushahidi.desktop
[Desktop Entry]
Type=Application
Encoding=UTF-8
Name=Ushahidi
Comment=Ushahidi
Categories=Application;Internet;
Exec=firefox http://localhost/ushahidi
Icon=access
Terminal=false
StartupNotify=false
EOF
fi
cp /usr/share/applications/ushahidi.desktop "$USER_HOME/Desktop/"

echo "Done installing Ushahidi"
