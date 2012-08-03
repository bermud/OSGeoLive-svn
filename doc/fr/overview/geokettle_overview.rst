:Author: Thierry Badard 
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-geokettle.png
  :scale: 80 %
  :alt: Logo du projet
  :align: right
  :target: http://www.geokettle.org/

GeoKettle
================================================================================

Extract Transform Load (ETL)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoKettle est une version de `Pentaho Data Integration <http://kettle.pentaho.com>`_ (connu aussi comme Kettle) avec des fonctionnalit�s spatiales. C'est un ETL (Extract, Transform and Load) puissant, s'appuyant sur les m�tadonn�es spatiales et d�di� � l'int�gration de diff�rentes sources de donn�es, servant � cr�er et � mettre � jour des bases de donn�es g�ospatiales, des silos de donn�es et des services web.

GeoKettle permet l'extraction de donn�es depuis des sources de donn�es, la transformation des donn�es pour pouvoir corriger les erreurs, nettoyer les donn�es, changer la structure de donn�es, rendre les donn�es conformes avec les standards, et charger les donn�es transform�e dans un SGBD, un fichier SIG, ou un service web g�ospatial. GeoKettle est particuli�rement utile pour automatiser des traitements complexes et r�p�titifs sans produire du code sp�cifique, faire des conversions entre formats de donn�es, migrer des donn�es entre SGBD, alimenter des SGBD en donn�es, etc.

Dans le domaine g�ospatial, Geokettle doit �tre compar� � FME, un ETL spatial propri�taire. GeoKettle est stable, rapide, conforme � la norme, avec des centaines de fonctions le support de lecture/�criture pour de nombreux formats de fichier, services et SGBD. GeoKettle est utilis� par diverses organisations autour du monde, dont des agences gouvernementales, des banques, des assurances et des int�grateurs de syst�mes g�ospatiaux.

.. image:: ../../images/screenshots/1024x768/geokettle-overview.png
  :scale: 50 %
  :alt: Capture d'�cran GeoKettle
  :align: right

Caract�ristiques principales
--------------------------------------------------------------------------------

* Extraction de donn�es depuis: 

  * plus de 35 types de base de donn�es: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * fichiers XML
  * fichiers XLS
  * fichiers Xbase (dBase, Foxpro, etc)
  * informations des syst�mes de fichiers
  * donn�es g�n�r�es
  * fichiers Microsoft Access
  * LDAP
  * syst�me SOLAP (Spatial OLAP): GeoMondrian
  * formats de donn�es g�ospatiales: Shapefile, GML 3.1.1, KML 2.2, tous les formats support�s par OGR
  * services web OGC: Web Feature Service (WFS), Sensor Observation Service (SOS), Catalogue Web Service (CSW)

* Transformation de donn�es:

  * transfert de donn�es bas� sur moteur propre (pas de g�n�rateur de code) 
  * tables de correspondance dans les bases de donn�es, les fichiers ou en m�moire
  * calculs
  * scripting: Javascript, SQL, RegExp
  * d�coupage
  * mapping
  * s�lection
  * partitionnement
  * filtrage
  * fusion
  * jointure
  * duplication
  * fonctionnemment en grappe (MPP)
  * transposition
  * analyse de donn�es spatiales: tampon, centro�de, distance, intersection, union, ...
  * g�otraitements avanc�s: d�coupage, delaunay, simplifier/adoucir les g�om�tries, d�coupages d'objets, ...
  * agr�gation spatiale
  * pr�visualisation cartographique

* Chargement de donn�es dans un format cible:

  * chargements de base de donn�es: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * alimentation de silos de donn�es
  * froamts de donn�es g�ospatiales: Shapefile, GML 3.1.1, KML 2.2, tous les formats support�s par OGR
  * services web OGC: Catalogue Web Service (CSW), ...
  * chargement partitionn�
  * chargement en masse
  * chargement parall�le
  * fonctionnement en grappe

* Environnement:
  
  * interface graphique compl�te nomm�e "Spoon" pour �diter toutes les options de transformation
  * outils en ligne de commande: pour ex�cuter des t�ches et des transformations
  * serveur web: ex�cution distante et fonctionnment en grappe parfait pour les environnement
    dans "les nuages" pour le traitement de jeux de donn�es tr�s importants.
  * API de programmation pour Java
  * �cosyst�me de plugins

Standards Impl�ment�s
--------------------------------------------------------------------------------

* conforme aux standards OGC (SFS, CSW, SOS)

D�tails
--------------------------------------------------------------------------------

**Site web:** http://www.geokettle.org/

**Licence:** License GNU Lesser General Public (LGPL) version 2.1

**Version du logiciel:** 2.0

**Plates-formes support�es:** Windows, Linux, Mac, Solaris

**Interfaces de l'API:** Java, Javascript

**Support:** http://www.spatialytics.org & http://www.spatialytics.com


Guide de d�marrage rapide
--------------------------------------------------------------------------------
    
* :doc:`Documentation du guide de d�marrage rapide <../quickstart/geokettle_quickstart>`
