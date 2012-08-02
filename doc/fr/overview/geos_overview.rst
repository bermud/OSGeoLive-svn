:Author: OSGeo-Live
:Author: Frank Warmerdam
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GEOS.png
  :scale: 100
  :alt: project logo
  :align: right
  :target: http://geos.osgeo.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GEOS
================================================================================

Biblioth�que spatiale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GEOS (Geometry Engine - Open Source) est un port en C++ de la `JTS Topology Suite (JTS) <http://tsusiatsoftware.net/jts/main.html>`_. Elle inclut les fonctions de pr�dicats et les op�rations spatiales de la sp�cification OGC "OpenGIS Simple Features for SQL spatial", ainsi que les fonctions de topologie am�lior�es sp�cifiques � JTS.

GEOS est la biblioth�que de g�om�trie g�ospatiale en C++ la plus utilis�e, motorisant des projets opensource comme que :doc:`PostGIS <postgis_overview>`, :doc:`QGIS <qgis_overview>`, :doc:`GDAL/OGR <gdal_overview>` et :doc:`MapServer <mapserver_overview>`, et des produits propri�taires comme `FME <http://www.safe.com/fme/fme-technology/>`_.

Standards impl�ment�s
--------------------------------------------------------------------------------

* fonctions de pr�dicats et les op�rations spatiales "OpenGIS Simple Features for SQL spatial" de l'OGC

Caract�ristiques principales
--------------------------------------------------------------------------------
    
* G�ometries: Point, LineString, Polygon, MultiPoint, MultiLineString, MultiPolygon, GeometryCollection
* Pr�dicats: Intersects, Touches, Disjoint, Crosses, Within, Contains, Overlaps, Equals, Covers
* Op�rations: Union, Distance, Intersection, Symmetric Difference, Convex Hull, Envelope, Buffer, Simplify, Polygon Assembly, Valid, Area, Length, 
* G�om�tries pr�par�es (pr�-index�es spatialement)
* Index spatial STR
* encodeurs et d�codeurs du Well Known Text (WKT) du Well Known Binary (WKB) de l'OGC
* API C et C++ (l'API C permet un stabilit� de l'ABI � long terme)
* Thread safe (en utilisant l'API r�entrante)

D�tails
--------------------------------------------------------------------------------

**Site web:**  http://geos.osgeo.org/

**Licence:** LGPL

**Version du logiciel:** 3.3.2

**Plates-formes support�es:** Windows, Linux, Mac

**Interfaces de l'API:** C, C++

**Support:** http://lists.osgeo.org/mailman/listinfo/geos-devel, http://www.osgeo.org/search_profile
