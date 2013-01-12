:Author: OSGeo-Live 
:Author: Stephan Meissl, Stephan Krause
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)
:Translator: Frank Gasdorf, Stephan Meissl

.. image:: ../../images/project_logos/logo-eoxserver.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Internet Dienste
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer ist ein Server um große Archive von Erdbeobachtungsdaten (Earth 
Observation - EO) über offenen Standards zur Verfügung zu stellen.

Die momentan unterstützen Erdbeobachtungsdaten beinhalten 2D Rasterdaten wie 
sie im Allgemeinen von Sensoren auf Satelliten oder Flugzeugen aufgenommen 
werden und welche Informationen zu Zeit und Ort (Fußabdruck auf der Erde) 
der Aufnahme enthalten. Diese Daten werden üblicherweise benutzt um die 
natürliche und die bebaute Umwelt auf der Erde zu beobachten.

EOxServer basiert komplett auf Open Source Software wie Python, 
:doc:`MapServer <mapserver_overview>`, Django / GeoDjango, :doc:`GDAL 
<gdal_overview>`, PROJ.4 und einer :doc:`SpatiaLite <spatialite_overview>` 
oder :doc:`PostGIS <postgis_overview>` Datenbank.

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.png
  :scale: 50 %
  :alt: In EOxServer eingebauter Klient
  :align: right


Kernfunktionen
--------------------------------------------------------------------------------

* Ansehen, Filtern, Auswählen und Herunterladen von Erdbeobachtungsdaten
* Registrieren von Archiven von Erdbeobachtungsdaten
* Administration via Web und Kommandozeile
* Zur Verfügung stellen von Daten über offene standardisierte Dienste des 
  Open Geospatial Consortium (OGC):

  * Web Coverage Service (WCS) 1.0, 1.1 und 2.0 & vorgeschlagenes EO-WCS
  * Web Map Service (WMS) & EO-WMS
  * Vorgeschlagene Erweiterungen für WCS wie: GeoTIFF-Codierung, vordefinierte 
    Projektionen (CRSs), Skalierung und Interpolation.
  * Die unterstützen Protokolle sind: KVP und XML/POST (zusammen verwendet mit 
    dem SOAP2POST Proxy auch XML/SOAP)

* Zur Verfügung stellen unter Verwendung der folgenden Formate und 
  Gruppierungen:

  * 2-D EO Coverages abgeleitet von gmlcov:RectifiedGridCoverage
  * 2-D EO Coverages abgeleitet von gmlcov:ReferenceableGridCoverage
  * Dataset Series (Daten-Serien) als eine Sammlung von EO Coverages, zum 
    Beispiel einer Zeitreihe
  * Stitched Mosaics (Zusammengefügte Mosaike) von Rectified EO Coverages 
    einschließlich des Konzeptes von contributingFootprint

* Unterstützte Coverage-Formate:

  * GeoTIFF
  * Durch die GDAL-Bibliothek unterstützte Datenformate

Implementierte Standards
--------------------------------------------------------------------------------

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

Details
--------------------------------------------------------------------------------

**Webseite:** http://eoxserver.org/

**Lizenz:** `MIT-style license <http://eoxserver.org/doc/copyright.html#license>`_

**Software Version:** 0.2.3

**Unterstützte Plattformen:** Linux, Windows, Mac

**API Schnittstellen:** Python

**Support:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart Dokumentation <../quickstart/eoxserver_quickstart>`
