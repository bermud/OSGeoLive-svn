:Author: OSGeo-Live
:Version: osgeo-live4.0
:License: Creative Commons

.. _gvsig-overview:

.. image:: ../../images/project_logos/logo-gvSIG.png
  :scale: 75 %
  :alt: project logo
  :align: right
  :target: http://www.gvsig.org/

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html


gvSIG Desktop
=============

Desktop GIS
~~~~~~~~~~~

gvSIG_ ist ein Geographisches Informationssystem (GIS). Als Desktop-Anwendung bietet es M�glichkeiten 
zur Erfassung, Speicherung, Handhabung, Analyse und Bereitstellung geografischer Informationen,
um damit komplexe Planungs- und Management-Probleme zu l�sen. 
gvSIG ist bekannt f�r seine benutzerfreundliche Benutzeroberfl�che und bietet Zugriff auf
alle g�ngigen Vektor- und Raster-Datenformate. 
F�r die Arbeit mit geografischer Information stehen in gvSIG eine breite Palette an Werkzeugen zur Verf�gung (Abfrage, 
Layout-Design, Geoprozessierung, Netzwerkanalyse, etc.).
Damit ist gvSIG ein ideales Werkzeug f�r die Arbeit im Ungang mit Geoinformation.

gvSIG ist bekannt f�r:

* Integration und Kombination von lokalen und entfernten Daten nach OGC-Standards.
* skalierbar und flexibel und bietet damit eine kontinuierliche Erweiterung
* in �ber 20 Sprachen verf�gbar (Spanisch, Englisch, Deutsch, Franz�sisch, Italienisch,...)
* plattformunabh�ngig (Windows, Linux, und Mac OS X)

.. image:: ../../images/screenshots/1024x768/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Kernelemente
------------

* Bietet allgemeine GIS-Funktionalit�t, wie das Laden von Daten, Karten-Navigation, Abfrage von
  alphanumerischer Karten-Informationen, Messen von Strecken und Fl�chen, thematische
  Kartographie, verschiedene Legendentypen, Beschriftungen, Objekt-Auswahl nach verschiedenen 
  Methoden, Tabellenfunktionen zur Erstellung von Statistiken, Verlinkungen, Layout-Manager, 
  Geoprocessing Werkzeuge, CAD- und Raster-Verarbeitungswerkzeuge, etc.

* Interoperabilit�t: Verarbeitung g�ngiger Datenformate:

  * Raster: ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, ...
  * Vektor & CAD: shapefile, GML, KML, DGN, DXF, DWG
  * Datenbanken: PostGIS, MySQL, Oracle, ArcSDE
  * Dienste: ECWP, ArcIMS, OGC standards

* Dient als Client zur Lokalisierung von Datenquellen innerhalb einer GDI
  SDI (catalogue and gazeteer services)
  
  * Catalog-Services: Z3950, SRW, CSW (ISO/19115 and ebRIM)
  * Gazetteer-Services: ADL, WFS, WFS-G
  
* Bietet mehr als 290 Geoalgorithmen durch die Integration von SEXTANTE_ and GRASS
  
* Fortschrittlich durch integrierte CAD Werkzeuge:

  * Vektor: Modifizieren, Erstellen and L�schen von Elementen
  * Administration per Kommandozeile m�glich, �hnlich handels�blicher CAD-Software
  * Werkzeuge wie z.B. Hilfefunktion, Ausrichtung an Gitternetz, Befehlsliste (undo), komplexe Objekt-Selektion
  * Werkzeuge zum Erzeugen von Geometrien, wie z.B. Punkt, Linie, Ellipsen, etc.
  * Werkzeuge zur Ver�nderung von Objekten, durch z.B. Rotationen, Symmetrie, etc.
  
* Fortschrittlich durch integrierte Rasterwerkzeuge:

  * Georeferenzierung und Umprojizierung
  * Export, Raster-Clip
  * look up tables, Histogramme
  * Filter, Vektorisierung
  * Pyramidengenerierung und Management von ROI (region of interest)

* Scripting Support (Jython)
* Leistungsstarker Mechanismus zur Umprojizierung durch PROJ4


Implementierte Standards
------------------------

Zahlreiche Open Geospatial Consortium (OGC) Standards werden durch das DesktopGIS unterst�tzt:

* Laden von WMS, WFS und WCS Layern
* Export/Import von SLD Legenden
* Export/Import von Web Map Context (WMC)
* Suchfunktion nach Catalog-Diensten durch CSW (ISO/19115 und ebRIM)
* Suchfunktion von Gazetteer, durch Verwendung von WFS-G 

Details
-------

**Webseite:** http://www.gvsig.org/

**Lizenz:** GNU General Public License (GPL) version 2

**Software Version:** 1.11

**Unterst�tzte Betriebssysteme:** Windows, Linux, Mac

**Support:** http://www.gvsig.org/web/organization/services


.. _gvSIG: http://www.gvsig.org
.. _SEXTANTE: http://forge.osor.eu/projects/sextante/

Schnellstart
------------

* `Schnellstart Dokumentation <../quickstart/gvsig_quickstart.html>`_
