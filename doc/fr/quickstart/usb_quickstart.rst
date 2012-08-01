:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live5.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Cr�er une cl� flash USB OSGeo-Live amor�able
********************************************************************************

Ici nous d�crivons comment cr�er une cl� flash USB OSGeo-Live amor�able. D�marrez � partir d'une cl� flash USB OSGeo-Live amor�able est plus rapide que depuis un DVD, et le lecteur USB peut �tre configur� pour conserver des donn�es entre les sessions.

Nous avons trouv� qu'il y a un nombre de trucs et astuces incluses dans la r�alisation r�ussie d'une cl� flash USB OSGeo-Live amor�able. Nous avons document� ce que nous savons, mais il y a probablement d'autres trucs et questions. Regardez les derni�res astuces ici: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB

Exigences
--------------------------------------------------------------------------------

* Une cl� flash USB 4 GB, si vous utilisez la version osgeo-live-mini (sans les installateurs Windows ni Mac)
* Une cl� flash USB 8 GB, si vous utilisez la version osgeo-live (avec les installateurs Windows et Mac)
* Un DVD OSGeo-Live ou une image ISO (t�l�charg�e depuis : http://live.osgeo.org/en/download.html)

Cr�er une cl� flash USB depuis Ubuntu
--------------------------------------------------------------------------------

(Ceci est le processus recommand� pour cr�er une cl� USB, et s'applique aussi pour les variantes d'Ubuntu, telles que Xubuntu ou OSGeo-Live.)

.. note::
   La version d'Ubuntu que vous utilisez, n�cessite d'�tre la m�me ou plus r�cente � la version de Xubuntu install�e sur votre cl� USB. Si vous installez OSGeo-Live 5.0/5.5 sur une cl� USB, vous avez alors besoin d'Ubuntu 11.04 ou d'une version plus r�cente.

T�l�chargez osgeo-live ou osgeo-live-mini sur le disque dur de votre ordinateur.

Ins�rez la cl� flash USB dans votre ordinateur.

  .. image:: ../../images/screenshots/800x600/usb_select.png
    :scale: 70 %

S�lectionnez :menuselection:`System --> Administration --> Startup Disk Creator`, ou cherchez `Startup Disk Creator` dans l'unit� du bureau.

  .. image:: ../../images/screenshots/800x600/usb_set_params.png
    :scale: 70 %

S�lectionnez osgeo-live ou l'image ISO osgeo-live-mini.

S�lectionnez la cl� USB flash.

S�lectionnez :guilabel:`Make Startup Disk`

  .. image:: ../../images/screenshots/800x600/usb_installing.png
    :scale: 70 %

Attendez 20 minutes ou jusqu'� que la cl� flash USB soit cr��e.

Cr�er une cl� flash USB depuis Windows
--------------------------------------------------------------------------------

Ins�rez une cl� USB dans votre ordinateur.

T�l�chargez et faites fonctionner l'installateur universel USB depuis: http://www.pendrivelinux.com/universal-usb-installer-easy-as-1-2-3/

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_licence.gif

Acceptez les termes de la licence.

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_selection.gif

Etape 1: Distribution: S�lectionez la distribution xubuntu i386 utilis�e pour l'image osgeo-live. (pour OSGeo-Live 5.5, s�lectionez xubuntu 11.04 Desktop i386)

Etape 2: S�lectionnez la derni�re image iso osgeo-live que vous devez avoir t�l�charg�e localement. Note: Vous aurez besoin d'entrer manuellement le chemin du fichier ISO, avec le bouton :guilabel:`Browse` seulement s'il trouve les fichiers iso xubuntu.

Etape 3: S�lectionez votre cl� flash USB flash

Etape 4: S�lectionnez Permanente si vous souhaitez conserver l'�tat entre les sessions.

S�lectionnez :guilabel:`Create`

  .. image:: ../../images/screenshots/1024x768/usb_penlinux_installing.gif

Attendez 20 minutes ou jusqu'� ce que la cl� flash USB soit cr��e.

Cr�er une cl� USB d�marrable dans les diff�rents syst�mes d'exploitation
--------------------------------------------------------------------------------

Etape 1: Installez UNetbootin (t�l�charg� depuis: http://unetbootin.sourceforge.net/).

Etape 2: Ins�rez une cl� flash USB dans votre ordinateur.

Etape 3: D�marrer UNetbootin, s�lectionner Diskimage (la cl� flash USB est s�lectionn�e automatiquement).

Etape 4: S�lectionnez le fichier ISO OSGeoLive.

S�lectionnez :guilabel:`OK`

  .. image:: ../../images/screenshots/1024x768/unetbootin_live_osgeo.png

Lancez l'ordre de boot du BIOS:
--------------------------------------------------------------------------------

La plupart des ordinateurs ne sont pas faits pour booter par d�faut depuis une cl� USB.

Pour permettre cela, d�marrez votre ordinateur, et choisissez la cl� appropri� quand vous �tes pr�t � entrer dans le BIOS (habituellement en appuyant sur la touche <Delete> ou <Function Key> ou similaire).

S�lectionnez de d�marrer depuis la cl� USB.

Notez que pour certains ordinateurs vous aurez besoin d'avoir une lecteur USB externe ins�r� dans votre ordinateur afin de le s�lectionner.

Notez aussi que le lecteur USB est souvent list� sous les lecteurs de disque dur plut�t que sous les lecteurs externes. 

D�marrez:
--------------------------------------------------------------------------------

D�marrez ainsi: :doc:`osgeolive_quickstart`

Probl�mes connus:
--------------------------------------------------------------------------------

* Les ordinateurs Mac ne d�marreront pas depuis cette cl� USB flash amor�able, veuillez utiliser le LiveDVD 

Voir aussi:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`virtualbox_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * Si vous rencontrez des probl�mes, veuillez les adresser sur cette page du wiki: http://wiki.osgeo.org/wiki/Live_GIS_Disc_Quick_Start_for_USB et discutez-en sur notre mailing-list: http://lists.osgeo.org/mailman/listinfo/live-demo
 * Pour davantage d'option concernant l'amor�age USB, voir http://pendrivelinux.com 
