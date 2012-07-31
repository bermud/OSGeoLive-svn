:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: Logo du projet
  :align: right
  :target: http://www.gaia-gis.it/spatialite/


SpatiaLite
================================================================================

Base de donn�es spatiale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite est un moteur de base de donn�es SQLite_ avec des fonctions spatiales int�gr�es en plus. 

SQLite est un SGBD populaire, simple, robuste, facile � utiliser et vraiment tr�s l�ger. Chaque base de donn�es SQLite est simplement un fichier; vous pouvez librement la copier, la compresser, l'envoyer sur un LAN ou sur le WEB sans aucun probl�me du tout.

Les fichiers sont aussi portables; le m�me fichier de base de donn�es fonctionnera sous Windows, Linux, MacOs, etc...

.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: Capture d'�cran Spatialite
  :align: right

Caract�ristiques principales
--------------------------------------------------------------------------------

L'extension SpatiaLite permet � SQLite de supporter les donn�es spatiales en se conformant aux sp�cifications de l'OGC.

* Support des formats standards WKT et WKB
* Impl�mente des fonctions spatiales SQL comme AsText(), GeomFromText(), Area(), PointN() et similaires
* L'ensemble des fonctions OpenGis est support� via GEOS, cela comprend des fonctions d'analyse spatiale sophistiqu�es comme Overlaps(), Touches(), Union(), Buffer() ..
* Support complet des m�tadonn�es spatiales avec les sp�cifications OpenGis
* Support de notations alternatives pour les g�om�tries - EWKT, GML, KML et GeoJSON
* Support de l'import et l'export des shapefiles
* Support de la reprojection de coordonn�es via PROJ.4 et jeux de param�tres g�od�siques de l'EPSG
* Support des jeux de caract�res locaux via GNU libiconv
* Impl�mente un v�ritable index spatial bas� sur l'extension RTree SQLite
* L'extension VirtualShape permet � SQLite d'acc�der aux fichiers shape comme des tables virtuelles
* Vous pouvez faire des requ�tes SQL standard sur des shapefiles externes, sans avoir besoin de les importer ou de les convertir
* L'extension VirtualText permet � SQLite d'acc�der aux fichiers CSV/TSV comme des tables virtuelles 
* L'extension VirtualXL permet � SQLite d'acc�der aux tables de fichiers xls comme des tables virtuelles 
* Vous pouvez faire des requ�tes SQL standard sur des fichiers externes CSV/TSV ou des tables Excel, sans avoir besoin de les importer ou de les convertir
* L'outil graphique supporte l'ensemble de ces �l�ments, d'une mani�re agr�able pour l'utilisateur


D�tails
--------------------------------------------------------------------------------

**Site web:** http://www.gaia-gis.it/gaia-sins/

**Licence:** MPL v1.1 et GPL v3

**Version du logiciel:** spatialite 3.1.0a / librasterlite 1.1 / spatialite-gui 1.5.0 / spatialite-gis 1.0.0

**Plates-formes support�es:** Linux, Mac, Windows

**Interface API:** C


Guide de d�marrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de d�marrage rapide <../quickstart/spatialite_quickstart>`

