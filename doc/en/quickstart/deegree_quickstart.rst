:Author: Johannes Wilden
:Version: OSGeo-Live DVD, Version 7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://deegree.org/

********************************************************************************
deegree 3 webservices quickstart 
********************************************************************************


Project description
================================================================================

deegree is open source software for spatial data infrastructures and the 
geospatial web.

Available components are:
 
  * Web-Services: WFS, WMS, CSW, WPS
  * Security


This quickstart describes how to:
   * start deegree 3 webservices on the Live DVD
   * use the deegree 3 services console to activate example configurations
   * find more information


About deegree 3
================================================================================

deegree 3 is the new generation of the deegree Java framework for GIS 
applications and OGC-service implementations.
It can be used to build web-based geospatial-data-infrastructures (GDI).


Start deegree 3 webservices
================================================================================

Choose "Start deegree" from the start menu.
The application will take a few moments to start up.


deegree 3 services console
================================================================================

When you start deegree for the first time, firefox should open (otherwise open 
it manually and point your browser to http://localhost:8033). Please wait until 
you can see the deegree 3 services console. 
This is a simple web-based GUI for editing the configuration files of the 
so-called deegree workspace.
Please enter the password "deegree" to gain access to the services console.


deegree 3 workspaces on OSGeo-Live GIS Disc
================================================================================

  * deegree-workspace-inspire

This workspace includes an example configuration for INSPIRE View- and 
Download-Services.
It consists of a transactional WFS (2.0.0 and 1.1.0) for all Annex I Data Themes
and a WMS (1.3.0 and 1.1.1) which serves three layers of those Annex I Data 
Themes.
Included are some harmonized dutch administrative units, cadastral parcels and 
addresses.
The WFS in this example acts as an INSPIRE Download service (direct access) and 
outputs valid, harmonized INSPIRE GML.
Additionally it supports multiple request types and querys.

.. tip::
This workspace loads harmonized INSPIRE GML from local files.
This can easily changed to PostGIS, Oracle Spatial or Microsoft SQL Server as 
backend.

After activating the "deegree-workspace-inspire" you can open a simple 
map-client by clicking on "see layers".
The service is configured to visualize the data and a basemap (rendered by 
OpenStreetMap).

A click on the "+" on the right side opens a layer tree showing all available 
layers. You can activate the INSPIRE layer served by the deegree WMS here.

.. tip::
The map client is based on `OpenLayers <http://openlayers.org/>`_. 
You can pan through the map holding the left mouse button and drag the map.
Zooming is possible via mouse wheel or the navigation elements on the left side.

More information and step-by-step tutorials about the INSPIRE workspace can be 
found under http://download.deegree.org/documentation/3.3.1/html/lightly.html#example-workspace-1-inspire-network-services


Want more?
================================================================================

This was just a short intro on the features of deegree 3. 
There is more information in the demo installations and on the deegree website.

  * deegree online demo

    Available here: http://demo.deegree.org

  * deegree home

    Available here: http://deegree.org/
