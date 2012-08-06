:Author: Hamish Bowman
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported  (CC BY 3.0)

.. image:: ../../images/project_logos/logo-gpsdrive.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.gpsdrive.de


GpsDrive
================================================================================

Logiciel de navigation GPS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

`GpsDrive <http://www.gpsdrive.de>`_ est un syst�me de navigation en voiture
(en v�lo, en bateau, en avion, � pied).
GpsDrive affiche votre position fournie par le GPS sur une carte zoomable.
Le fichier de carte est s�lectionn� automatiquement en fonction de votre position
et de l'�chelle de pr�f�rence. Tous les r�cepteurs GPS qui supportent le protocole NMEA
devraient �tre utilisables, aussi bien que de de nombreux GPS USB utilisant un protocole binaire connu 
comme `Gpsd <http://gpsd.berlios.de>`_ GPS daemon and multiplexer.

El�ments centraux
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/1024x768/gpsdrive-cyclemap.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* t�l�chargement de donn�es LANDSAT ou OpenStreetMap depuis le Web, ou enregistrez vos propres images
* Affichage direct des donn�es d'OpenStreetMap enregistr�es dans une base de donn�es PostGIS utilisant Mapnik
* Affichage direct des donn�es de la mosa�que haute r�solution Blue Marble de la NASA
* Commandes verbales utilisant eSpeak
* Tableau de bord et interface graphique utilisteur (GUI) hautement adaptables
* Support les traces et routes GPX, options de stockage d'un nombre de points comprenant SQLite
et compatible avec des fichiers plein texte de GpsBabel 
* Recherche des POI les plus proche � l'int�rieur d'un rayon donn�
* Pr�paration d'itin�raires
* Serveur inclus pour garder la trace des positions des vos amis
* Int�gration du Wifi Kismet

D�tails
--------------------------------------------------------------------------------

**Site Web:** http://www.gpsdrive.de

**License:** GNU General Public License (GPL) version 2

**Version du logiciel:** 2.12svn

**Plateformes support�es:** GNU/Linux, Mac OSX

**Support:** http://gpsdrive.de/support.shtml


D�marrage rapide
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/gpsdrive_quickstart>`