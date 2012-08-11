:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-osgearth.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://osgearth.org/


osgEarth
================================================================================

Bo�te � outils de rendu de terrain
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

osgEarth est une bo�te � outils de rendu de terrain adaptable pour OpenSceneGraph_ (OSG), une bo�te � outils, hautement performante, de graphiques 3D. Vous n'avez qu'� cr�er un fichier simple XML, de l'indiquer dans vos donn�es d'�l�vation vectorielles ou image, de le charger dans votre appliction OSG pr�f�r�e, et en avant!
osgEarth supporte tous les types de donn�es et il est fournit avec un grand nombre d'exemples pour vous aider � vous lancer et avancer rapidement et facilement. 

.. _OpenSceneGraph: http://www.openscenegraph.org/

.. image:: ../../images/screenshots/1024x768/osgearth.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

El�ments centraux
--------------------------------------------------------------------------------

osgEarth permet de d�ployer facilement des mod�les de terrain adaptables: 

* Cr�ation de mod�les de terrain - ou bien hors ligne, ou de fa�on dynamique avec un run-time 
* Chargement de mod�les de terrain sur l'ensemble du globe sans �crire aucun code 
* Une couche image pour ins�rer des donn�es de haute r�solution 
* Combinaison � la vol�e d'images multiples, de donn�es d'�l�vation et vectorielles
* Mise en cache de tuiles de cartes pour maximiser les perfomances 
* Ajustement de l'opacit� de couches pour des effets multi-textures 

Mais osgEarth fait beaucoup plus que du rendu de terrain: 

* Drapage de donn�es vectorielles de SIG sur le terrain 
* Reprojection de donn�es dans de nombreux syst�mes de coordonn�es
* Placement de mod�les de terrain avec des coordonn�es lat/long 
* Tests rapides d'intersection
* Incorporation de nouvelles donn�es dans les bases de donn�es VPB existantes (sans les reconstruire) 
* Acc�s direct aux tuiles du terrain pour les processus non-visuels 

Les choses que vous pouvez voir:

* Fichierds image GeoTIFF et Mod�les Num�riques de terrain (Digital Elevation Model - DEM) (plus de nombreux autres formats) 
* Donn�es vectorielles comme les shapefiles d'ESRI
* Compatible avec les donn�es de services de cartographie en ligne de l'OGC (comme WMS_) 
* Couches SIG publi�es avec MapServer_ ou `ArcGIS Server' d'ESRI_
* Cartes en ligne comme OpenStreetMap_, `ArcGIS Online`_, ou `NASA OnEarth`_

.. _WMS: http://www.opengeospatial.org
.. _MapServer: http://mapserver.org
.. _`ESRI ArcGIS Server`: http://www.esri.com/software/arcgis/arcgisserver/
.. _OpenStreetMap: http://openstreetmap.org
.. _`ArcGIS Online`: http://resources.esri.com/arcgisonlineservices/
.. _`NASA OnEarth`: http://onearth.jpl.nasa.gov


D�tails
--------------------------------------------------------------------------------

**Site Web:** http://osgearth.org/

**License:** GNU Lesser General Public License (LGPL) 

**Version de logiciel :** 2.0

**Platformes support�es:** Linux, Mac, Windows

**Interfaces API:** C++

**Support commercial:** http://osgearth.org/#ProfessionalServices


D�marrage rapide
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/osgearth_quickstart>`