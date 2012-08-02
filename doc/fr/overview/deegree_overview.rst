:Author: Johannes Wilden
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 80 %
  :alt: Logo du projet
  :align: right
  :target: http://deegree.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: Projet OSGeo
  :align: right
  :target: http://www.osgeo.org


Deegree
================================================================================

Services web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Deegree est libre, stable, puissant et facile � utiliser. Deegree est l'ensemble 
le plus complet d'impl�mentations des standards de l'Open Geospatial
Consortium (OGC) dans les logiciels libres et opensource, allant du WFS 
transactionnel � l'affichage de donn�es 3D via Web Terrain Service et plus!

Deegree est une solution pour les Syst�mes d'Information G�ographique (SIG) web 
et bureautique et les Infrastructures de Donn�es Spatiales (IDS).
Il est compos� d'une API (Application Programming Interface) Java puissante et 
compl�te  (API) et d'un ORM (Object-Relational Mapping) puissant pour des sch�mas 
spatiaux simplee comme complexes. Deegree fournit aussi un ensemble de webservices 
conformes en particulier avec les standards WMS, WFS, CSW, SOS et WPS.

Deegree rend votre IDS pr�te et fonctionnelle en utilisant vos propres donn�es et 
en r�pondant � vos exigences.


.. image:: ../../images/screenshots/1024x768/deegree_mainpage.jpg
  :scale: 50%
  :alt: Capture d'�cran
  :align: right

Quelques exemples de fonctionnalit�s
--------------------------------------------------------------------------------

* Web Map Service (WMS)

  * tr�s flexible sur le contenu des couches
  * support et utilisation de d�finitions de style (SLD 1.0)
  * capacit�s � r�aliser des analyses th�matiques avec des graphiques (diagrammes circulaires, histogrammes, diagrammes en courbe) comme symboles ponctuels
  * source de donn�es: tous les services web les plus courants de l'OGC (WMS, WFS, WCS), PostgreSQL/PostGIS, Oracle Spatial, n'importe quelle requ�te SQL peut �tre utilis�e pour cr�er le contenu de la couche WMS
  * tr�s stable, m�me sur des grandes �chelles
  * support de requ�tes HTTP GET, POST et des requ�tes d'information sur les objets
  * certifi� conforme � la norme OGC

* Web Feature Service (WFS)

  * support d'objets simples et complexes
  * transformation � la vol�e de coordonn�es pour plus de 3000 syst�mes de coordonn�es de r�f�rence
  * support de formats de sortie flexible
  * facilement am�lior� pour se conformer � la directive INSPIRE

* Web Coverage Service (WCS)

  * support des requ�tes HTTP GET et POST
  * source de donn�es: images (tif, png, jpeg, gif, bmp), fichiers GeoTIFF, ECW et Oracle GeoRaster
  * ac�s rapide � des couvertures larges

* Catalogue Service (CSW)

  * source de donn�es: bases de donn�es PostgreSQL, Oracle
  * requ�tes support�es: GetCapabilities, DescribeRecord, GetRecordById, GetRecords, Transaction - Insert, Update, Delete, Harvesting

* Service d'impression de carte en ligne

  * supporte diff�rents formats d'impression (HTML, PDF, PNG)
  * gestion de t�ches de longue dur�e
  * support de requ�tes asynchrones pour permettre des actions � grande �chelle
  * requ�tes stock�es dans une base de donn�es et restant disponibles m�me en cas d'arr�t du service WMPS ou de d�faillance de la machine

* Web Perspective View Service (WPVS)

   * source de donn�es: WMS distant/local, WFS distant/local, WCS local, Postgres/PostGIS, Oracle Spatial
   * mod�les d'�levation pouvant �tre des donn�es vecteur ou raster
   * requ�tes: Get3DFeatureInfo, GetView


Standards impl�ment�s
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 en cours)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 en cours)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; inclusion des profils OGC ISOAP 1.0 et INSPIRE
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

D�tails
--------------------------------------------------------------------------------

**Site web:** http://deegree.org

**Licence:** LGPL

**Version du logiciel:** 3.2-pre3

**Plates-formes support�es:** Windows, Linux

**Interface de l'API:** Java

**Support:** http://wiki.deegree.org/deegreeWiki/GettingSupport


Guide de d�marrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de d�marrage rapide <../quickstart/deegree_quickstart>`
