:Author: OSGeo-Live
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://gdal.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GDAL/OGR
================================================================================

Geospatial Data Translation Tools
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) dostarcza narz�dzi wiersza polece�
do przeliczania i przekszta�cania szerokiego spektrum danych przestrzennych
zapisanych w formatach rastrowych i wektorowych.

Narz�dzia zbudowane s� w oparciu o wieloplatformow� bibliotek� C++ 
dost�pn� z poziomu wielu j�zyk�w programowania. Biblioteka prezentuje aplikacjom
wywo�uj�cym ujednolicony model danych dla wszystkich obs�ugiwanych format�w.

GDAL/OGR jest najszerzej stosowan� geoprzestrzenn� bibliotek� dost�pu do danych.
Zapewnia silnik dost�pu do danych, wielu aplikacjom, w tym korzysta z niej 
MapServer, GRASS, QGIS, i OpenEV. Jest r�wnie� wykorzystywana przez takie 
programy jak OSSIM, Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, 
MapGuide and ArcGIS.

.. image:: ../../images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supports many geodata formats
  :align: right

G��wne funkcje
--------------------------------------------------------------------------------

* Narz�dzia wiersza polece� do przeliczania, odkszta�cania obraz�w, selekcji informacji, i wielu innych powszechnych zada�
* Bardzo wydajny dost�p do danych rastrowych, wykorzystuj�cy kaflowanie i podgl�dy
* Obs�uga du�ych plik�w - wi�kszych ni� 4GB
* Dost�p do biblioteki za pomoc� j�zyk�w Python, Java, C#, Ruby, VB6 and Perl
* System obs�ugi uk�ad�w odniesienia oparty na bibliotekach PROJ.4 oraz OGC Well Known Text

Popularne obs�ugiwane formaty
--------------------------------------------------------------------------------

GDAL obs�uguje ponad 50 format�w danych rastrowych, OGR ponad 20 wektorowych.

Mi�dzy innymi s� to:

* **Raster:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, i wicej ...
* **Wektor:** MapInfo (tab i mid/mif), ESRI Shapefile, ESRI Coverages, ESRI Personal Geodatabase, DGN, GML, PostGIS, Oracle Spatial, i wicej ...

Zaimplementowane standardy
--------------------------------------------------------------------------------

Model danych OGR jest zgodny ze specyfikacj� OGC Simple Feature.

Szczeg�y
--------------------------------------------------------------------------------

**Strona internetowa:**  http://www.gdal.org

**Licencja:** `X/MIT style Open Source license <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Wersja programu:** 1.7.0 (1.9.2)

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** C, C++, Python, Java, C#, Ruby, VB6 and Perl

**Wsparcie:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

Wprowadzenie
--------------------------------------------------------------------------------
    
* :doc:`Przejd� do wprowadzenia <../quickstart/gdal_quickstart>`
