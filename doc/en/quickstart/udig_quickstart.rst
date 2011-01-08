:Author: OSGeo Live
:Author: Jody Garnett
:Author: Micheal Bedward
:Version: osgeo-live4.0
:License: Creative Commons
:Thanks: geotools-user list

.. _udig-quickstart:
 
.. image:: ../../images/project_logos/logo-uDig.png
  :scale: 60 %
  :alt: project logo
  :align: right

***************
uDig Quickstart 
***************

uDig (User Friendly Internet Desktop GIS), is a GIS Desktop client for
editing and viewing GeoSpatial data.

This Quick Start describes how to:

  * load a map layers from a shapefile and Web Map Service (WMS)
  * use the standard map tools
  * apply colour to map features using styling

start uDig
==========

.. TBD: Add menu graphic to this uDig Quickstart

#. Choose uDig 1.1 > uDig from the start menu
#. The application will take a few moments to start up

If you have any difficulties, or are running uDig please review the Running uDig reference page.

Welcome View
============

#. When you start up uDig for the first time the Welcome view takes up the entire display. This screen
   has links to tutorials, documentation and the project website.

#. Click the arrow labelled Workbench in the upper right corner, to reveal the contents of the uDig workbench.
  
  .. image:: ../../images/screenshots/800x600/udig_welcome.png

You can return to the Welcome view at any time by selecting the Help > Welcome from the menu bar.

Workbench
=========

The Workbench window offers multiple Editors (each showing a Map) and supporting Views (offering
information about the current Map).

  .. image:: ../../images/screenshots/800x600/udig_workbench.png

Shown above is a typical uDig session with the Map editor, Projects view, Layers view and Catalog
view labelled . These views will be described further as we demonstrate their use.

Files
=====

To start out with we are going to load some of the sample data included on the DVD.

#. Choose :menuselection:`Layer --> Add` from the menu bar to open up the **Add Data** wizard

#. Select **Files** from the list of data sources

#. Press :guilabel:`Next` to open up a file dialog

#. The OSGeo Live DVD contains sample data in:
   
   * :file:`~/data` (a short cut to :file:`/usr/local/share/data`)
   * :file:`/usr/local/share/udig/udig/udig-data/`

#. Select the following file from the udig-data folder:
   
   * :file:`countries.shp`
   
#. Press :guilabel:`Open`
   
   * A new Map editor will be opened based on the contents of your shapefile. The default name and
     projection of the Map has been taken from your shapefile.
   
   * You can see the **Catalog view** has been updated with an entry for :file:`countries.shp`. This
     view is used to track the use of resources by the uDig application.
   
   * The **Layers** view shows a single layer is displayed on this map. This view is used to change
     the order and appearance of information in your Map.
   
   * The **Projects** view has been updated to show that your map is stored in projects > countries.
     You can have multiple projects open at a time, each project can have several maps.

#. Open up your data folder on the desktop

#. Drag :file:`clouds.jpg` onto the Map Editor, a new layer is added to to the map.\

#. You can see the order the layers are drawn in the layer view. Right now the clouds.jpg layer is drawn
   ontop of the countries layer.

#. Select the clouds.jpg layer in the catalog view and drag it to the bottom of the list
  
  .. image:: ../../images/screenshots/800x600/udig_QuickstartCountriesMap.jpg

.. note::
   One of the most common questions asked when uDig is considered for an organization is how much memory
   the application uses. Unlike most GIS applications uDig can get by with a fixed amount of memory. The
   above shapefile is not loaded into memory, we have a policy of keeping data on disk and drawing data
   like this shapefile onto the screen as needed.

.. tip:: You can also drag and drop shapefiles directly into the uDig application!

Map
===

You can control where in the world the Map Editor is looking by using the navigation tools in the tool bar along the top of the screen.


#. The |ZOOM| Zoom tool is available by default
   
   .. |ZOOM| image:: ../../images/screenshots/800x600/udig_zoom_mode.gif
   
   * Use the zoom tool by drawing a box using the left mouse button around the area of the wold you wish
     to see.
   * To zoom out draw a box with the right mouse button. The current map extents will be located within
     the box you draw.

#. The |PAN| Pan tool can be used to scroll around your map with out changing scale.
  
   .. |PAN| image:: ../../images/screenshots/800x600/udig_pan_mode.gif

#. There are also several navigation buttons that can be used at any time:
 
   * |SHOWALL| Show All, can be used to return to the full extents at any time
   
     .. |SHOWALL| image:: ../../images/screenshots/800x600/udig_zoom_extent_co.gif

   * |ZOOM_IN| Zoom In and |ZOOM_OUT| Zoom Out can be used to change the scale by a fixed amount.

     .. |ZOOM_IN| image:: ../../images/screenshots/800x600/udig_zoom_in_co.gif
     .. |ZOOM_OUT| image:: ../../images/screenshots/800x600/udig_zoom_out_co.gif

   * You can use Navigation > Back and Navigation > Forward in the menu bar to cycle though previously
     visited locations.

.. tip:: Most tools allow you to Pan by holding the center button and control the scale using the
   scroll wheel.

Web Map Server
==============

.. sidebar:: Offline

   If you are not connected to the internet run **Start GeoServer** for a local WMS. The script
   will open a page with a "wms capabilities" link you can drag into your empty map.
   
One of the reasons to use an application like uDig is to access all the great free geospatial
information available on the web. This section covers the use of Web Map Servers which make
available layers of information that you can mix into your own maps.

.. tip:: You can also connect to Web Map Servers using the Add Data Wizard
  for Drag and Drop.

#. Select :menuselection:`File --> New --> New Map` from the menu bar

#. Change to the **Web** view, click on the tab next to the **Catalog** view to reveal the *Web* view.
   
  .. image:: ../../images/screenshots/800x600/udig_WebViewClick.png
    :scale: 70 %

#. Click on the link *WMS:dm solutions* link

#. From the Resource Selection page we are going to choose the following layers:

   * Elevation/Bathymetry
   * Parks
   * Cities
   
.. image:: ../../images/screenshots/800x600/udig_AddWMSLayers.png
  :scale: 70 %

#. Press :guilabel:`Finish` to add these layers to your map
   
.. image:: ../../images/screenshots/800x600/udig_WMSMap.png
  
#. Use the |ZOOM| Zoom Tool to move closer to one of the Parks

#. Switch to the |INFO| Info Tool and click on one the parks to learn more about it
   
.. |INFO| image:: ../../images/screenshots/800x600/udig_info_mode.gif

Tip: You can switch between the zoom and info tools by pressing Z and I on the keyboard.

Style
=====

#. Select the project > countries, you can double click to open this Map, or Right Click and choose Open Map

#. Select the countries layer in the Layer view

#. Open up the Style Editor by right clicking on countries layer and choosing Change Style

#. We are going to change a few things about how countries are displayed
   
   * Line: Click on the Color and change the color to BLACK
   
   * Fill: uncheck the box to turn off fill
   
   * Label: check the box, and choose CNTRY_NAME from the list of attributes
   
   .. image:: ../../images/screenshots/800x600/udig_StyleEditor.png
      :scale: 70 %

#. Press :guilabel:`Apply` to see what this looks like on your Map, the **Layer** view will also be updated
   to reflect the current style

#. When you are happy with the result you can press :guilabel:`Close` to dismiss the dialog

#. Some files include style settings, Select :menuselection:`Layer --> Add` from the menu bar

#. Select **Files** from the list of data sources and press :guilabel:`Next`

#. Using the file chooser open up **timezone.shp** and press :guilabel:`Open`

#. It is a bit hard to see what is going on with the clouds.jpg layer providing so much details.
   Select :menuselection:`Map --> Mylar` from the menu bar to focus on the selected layer

#. Using the *Layer* view select timezone, countries and clouds.jpg in turn to see the effect
  
.. image:: ../../images/screenshots/800x600/udig_MapMylar.jpg

#. You can turn off this effect at any time using :menuselection:`Map --> Mylar` from the menu bar

Things to Try
=============

Here are some additional challenges for you to try:

#. Try viewing your own GIS map layers, or try adding a layer from a Web Feature Service (WFS).
#. Try styling the WFS layer.

What Next?
==========

This is only the first step on the road to using uDig. There is a lot more great material (and ability) left for your to discover in our walkthroughs.

* Walkthrough 1

  Try out the use of PostGIS, extract data from a Web Feature Server and explore the
  use of Themes with our powerful Color Brewer technology.

  :file:`/usr/data/udig/udig-docs/uDigWalkthrough 1.pdf`

* Walkthrough 2 - Learn how to create shapefiles and use the Edit tools to manipulate
  feature data, covers the installation of GeoServer and editing with a Web Feature
  Server.

  Available on http://udig.refractions.net/

