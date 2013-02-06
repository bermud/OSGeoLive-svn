:Author: Friedjoff Trautwein, http://www.geops.de
:Author: Patric Hafner, http://www.geops.de
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-cartaro.png
  :scale: 100%
  :alt: project logo
  :align: right
  :target: http://cartaro.org

Cartaro
================================================================================

Geoprzestrzenny CMS
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Cartaro dostarcza geoprzestrzennej funkcjonalno�ci i us�ug sieciowych poprzez
System Zarz�dzania Tre�ci� (CMS) Drupal. Za pomoc� kilku klikni�� w Cartaro,
jeste� w stanie stworzy� i uruchomi� us�ugi sieciowe w standardach OGC oraz
stworzy� mapy na stronach internetowych. Cartaro jest zbudowane na komponentach
Open Source: bazie danych :doc:`PostGIS <../overview/postgis_overview>`, us�ugach 
GeoWebCache :doc:`GeoServer <../overview/geoserver_overview>` , mapach w przegl�darce
internetowej :doc:`OpenLayers <../overview/openlayers_overview>`, wszystko 
zarz�dzane za pomoc� pot�nego systemu zarz�dzania tre�ci� `Drupal <http://drupal.org>`_ CMS.

Cartaro jest zaprojektowane dla stron CMS, kt�re musz� obs�ugiwa� dane przestrzenne,
i dla organizacji chc�cych lekkiej infrastruktury Danych Przestrzennych (SDI) 
przy minimalnych nak�adach na konfiguracj� i programowanie.

.. image:: ../../images/screenshots/1024x768/cartaro_frontpage.png
  :scale: 50%
  :alt: Cartaro Frontpage
  :align: right

G��wne funkcje
--------------------------------------------------------------------------------

Most SDI functionality comes right out of the box through the close integration 
of Drupal with PostGIS and GeoServer. The main features of Cartaro are:

* Spatial data storage with true geometry data types
* Creation of data types from within the Drupal GUI
* Integrated online editing of geospatial data
* Data publishing with integrated maps
* Configuration of map layouts and behaviors
* Symbol styling
* Data publishing through OGC standards-compliant web services (OWS) like WMS and WFS
* High performance map output through GeoWebCache
* Transparent privilege handling and security for all spatial data
* Content publication workflow and revision moderation
* Basic metadata collection through access to GeoServer-GUI
* Full extensibility through thousands of Drupal modules or individual programming

Zaimplementowane standardy
--------------------------------------------------------------------------------

  * :doc:`../standards/wms_overview`
  * :doc:`../standards/wfs_overview`
  * :doc:`../standards/wcs_overview`
  * :doc:`../standards/fe_overview`
  * :doc:`../standards/sld_overview` 
  * :doc:`../standards/gml_overview`

Szczeg�y
--------------------------------------------------------------------------------

**Strona internetowa:** http://cartaro.org/

**Licencja:** GNU General Public License (GPL) wersja 2

**Wersja programu:** 1.0-beta4

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** JavaScript, PHP

**Wsparcie:** http://www.geops.de

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/cartaro_quickstart>`
