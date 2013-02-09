:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.5
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. TBD: Cameron's review comments:
  This document is in "DRAFT" state until these comments have been removed.
  I've added a number of review comments, starting with TBD: ...
  Overall: Each section needs to explain what it is about to do and the
  benefits of it. (target audience is a new user).
  We also need screen shots after each significant step.
  Once these comments have been addressed, please remove my comment.

.. image:: ../../images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.qgis.org


********************************************************************************
QGIS Quickstart 
********************************************************************************

Quantum GIS (QGIS) is a user friendly Desktop GIS client which lets
you visualize, manage, edit, analyse data and compose printable maps.

You can launch it from the menus with :menuselection:`Geospatial --> Desktop GIS --> Quantum GIS`.
Also on this disc is the very nice `QGIS Data Browser <http://planet.qgis.org/planet/tag/qgis%20browser/>`_ in
the :menuselection:`Geospatial --> Databases` menu and
the :doc:`QGIS Map Server <../overview/qgis_mapserver_overview>` in
the :menuselection:`Geospatial --> Web Services` menu.

.. redundant due to the TOC; This Quick Start focuses on the Desktop GIS application and describes how to:
  * Update an existing QGIS project
  * Create a new QGIS project with a simple vector layer
  * Load QGIS plugins
  * Analyse data with GRASS and Sextante plugins
  * Load data from Open Street Map


.. contents:: Contents


Edit QGIS project
================================================================================

Let's start by opening up an existing QGIS project, and turning layers on and
off.

.. TBD: Cameron's review comments:
  Screen shot here (showing menu selection with NaturalEarth highlighted)

#. With QGIS launched from the :menuselection:`Desktop GIS` menu,
   select :menuselection:`File --> Open Project...` from the menu bar.

#. Choose :file:`QGIS-NaturalEarth-Example.qgs` and press :guilabel:`Open`.

   * You should see a world map.

#. Tick the ``ne_10m_populated_places`` check box in the Layers tree.

   * Populated places are now displayed as many green dots:

     .. image:: ../../images/screenshots/1024x768/qgis.png
        :scale: 70 %

#. Try dragging layers up and down in the legend and see how that
   effects visiblity of the layers below.

#. Have a look at the tools on the tool bar. Try panning, zooming in,
   and zooming back out to full extent again.  Find these tools next
   to the :guilabel:`hand` icon. If the toolbars seem cluttered you
   can drag them around and turn them on and off by right clicking.
   You can also zoom in and out with the mouse wheel, and pan with a
   left-click drag.

.. TBD: Cameron's review comments:
  Screen shot here, touched up with a red circle around the "hand" icon.
  http://wiki.osgeo.org/wiki/Live_GIS_Add_Project#Screen_Shot
  HB: toolbars are all on top of each other by default, it's not ideal..


Style a layer
================================================================================

Now lets try customising the style of the map.

.. TBD: Cameron's review comments:
  Screen shot or two here

#. Zoom in a little on the map, then double click ``ne_10m_rivers_lake_centerlines`` in
   the Layers tree.

#. Change the color in `Outline Options` to a different color, say yellow.

#. Press :guilabel:`OK`.

   * Notice that rivers are now rendered in your new color.


Create a new QGIS project
================================================================================

Let's now create a new QGIS project and load our own data.

#. Choose :menuselection:`File --> New Project`.

#. Click :menuselection:`Layer --> Add Vector Layer...`.

#. Browse to dataset :file:`/home/user/data/natural_earth2/ne_10m_admin_0_countries.shp`.

#. Press :guilabel:`Open` then :guilabel:`Open` again.

   * You should see all world countries.

.. TBD: Cameron's review comments:
  Screen shot here


Connect to a PostGIS spatial database
================================================================================

.. TBD: Cameron's review comments:
  For Info of author: I've switched from OSM dataset to Natural Earth,
  as OSM extent changes between releases, which means screenshots from
  this quickstart would become dated.

Let's now include a layer from a Postgres database.

#. In the layer list on the left, untick the ``ne_10m_admin_0_countries`` visibility
   check box to temporarily hide it.

.. image:: ../../images/screenshots/800x600/qgis_postgis_connect.png
   :scale: 70 %
   :alt: Connecting to a PostGIS DB
   :align: right

#. Choose :menuselection:`Layer --> Add PostGIS Layers...`.

   * Both Natural Earth and OpenStreetMap Postgis databases
     are already available; we will be using use the Natural Earth database.
     If you wanted to connect to a different database, you would select
     the :guilabel:`New` button and fill in the database parameters.

#. Select the "Natural Earth" connection and press :guilabel:`Connect`.

   * A list of database tables will appear.

#. Select ``ne_10_populated_places`` and click :guilabel:`Add`.

   * For more details about working with PostGIS databases see
     the :doc:`PostGIS Quickstart <postgis_quickstart>`.

#. Zoom in on the United States using the mouse wheel and left-click drag
   to navigate.

#. Right click on ``ne_10m_populated_places`` in the layer list to get a context
   menu, then select :menuselection:`Properties`.

#. Let's represent one of the database attributes in the data as a bubble plot.
   In the middle of the `Layer Properties` window, drag the Transparency
   slider to **50%**, press the :guilabel:`Advanced` button and select
   :menuselection:`Size scale field`, then choose **elevation** 
   (it's in about the middle of the list), and finally set the
   symbol `Size` scaling to **0.01**. Then click :guilabel:`Ok`


Using the GRASS Toolbox
================================================================================

There have been many plugins written for QGIS which extend QGIS's core
functionality. One of the more powerful is the GRASS plugin, which taps
into the hundreds of geospatial processing modules available
from :doc:`GRASS GIS <../overview/grass_overview>`.

.. TBD: Cameron's review comments:
  Screen shot here, show toolbox menu, which has been scrolled down to show GRASS, ticked.

#. Clear the slate with :menuselection:`File --> New Project`.

#. Choose :menuselection:`Plugins --> Manage Plugins`, then scroll down or
   type ``grass`` into the Filter box, and select the `GRASS` plugin.

   * Notice that a new GRASS icon has been added to the Toolbar, and
     a new `GRASS` menu item has been added to the `Plugins` menu.

#. Connect to an existing GRASS workspace with :menuselection:`Plugins --> GRASS --> Open mapset`.

   * The GRASS GIS data base (Gisdbase) has already been set to `~/grassdata` on
     the disc for you.

#. Within the central GRASS data base are a number of sample datasets. We'll
   load the North Carolina location, and the ``user1`` mapset within it. Choose
   the `nc_basic_smp` Location and `user1` working mapset, then click :guilabel:`Ok`.

#. To add a map to the QGIS layer list, choose :menuselection:`Plugins --> GRASS --> Add GRASS raster layer`.

   * In the PERMANENT mapset select the `elevation_shade` map and click :guilabel:`Ok`.

     .. image:: ../../images/screenshots/1024x768/qgis_grass_layers.jpg
       :scale: 50 %
       :alt: GRASS GIS layers loaded into QGIS
       :align: right

#. Add another GRASS raster layer, this time the `elevation` map from the
   PERMANENT mapset.

   * Double click on the `elevation` map in the QGIS layer list and set its
     transparency to 65%.

#. To add a vector map, choose :menuselection:`Plugins --> GRASS --> Add GRASS vector layer`.

   * From the PERMANENT mapset select the `roadsmajor` map and click :guilabel:`Ok`.


The plugin also gives you access to many of the powerful GRASS analysis
modules and visualization tools:

.. HB: We could go through a grass processing module here (e.g. r.sun), but
  probably it gets too long and a fTools or SEXTANTE module could take on that
  role. Here we show off NVIZ as it brings 3D visualization capability to
  QGIS, and people do like the shiny. It is helpful to go through the g.region
  housecleaning step next, so for now we'll use that as the example of how to
  run a module.

#. From the top menu select :menuselection:`Plugins --> GRASS --> Open GRASS tools` and
   drag the edge to make the window a bit bigger.

   * A long list of analysis tools will appear. Go to the `Module Tree` tab and
     select :menuselection:`Region settings --> g.region.multiple.raster`.
     Clicking on it will open a new tab. Simply type ``elevation`` for the
     raster map name and press :guilabel:`Ok`. The `elevation` map will
     now have a thin red line around it, indicating the extent of
     GRASS's `computational region` bounds.

#. Back in the `Module Tree` tab of the `GRASS Tools` window, go down
   to :menuselection:`3d Visualization` and select `NVIZ`. You may need to
   drag the corner of the toolbox window again to make it a bit larger to
   see all the options.

#. In the new module tab that pops open, select the `elevation` map as the
   map for elevation. Then depress the rectangle with red corners button on
   the right of the map name to use the region bounds and resolution of that
   map. As mentioned earlier, the `computational region` is a core theme in
   GRASS raster processing.

#. Select `roadsmajor` for the vector overlay, then click :guilabel:`Run`.

#. Once the NVIZ 3D view opens, maximize the window and drag the positioning
   puck in the compass box on the left to a nice view.

#. Choose :menuselection:`Visualize --> Raster surfaces` and set the `fine` resolution
   to 1, then if needed click the green :guilabel:`DRAW` button in the top
   left and wait while it renders.


Using the SEXTANTE Toolbox
================================================================================

Another major plugin for QGIS which opens the door to a large family of
processing tools is the `SEXTANTE <http://www.sextantegis.com/>`_ Toolbox.
It acts as a standardized wrapper around a number of other sets to tools.

.. TBD: Cameron's review comments:
  If we are to include Sextante, then we need to describe using one of the
  Sextane features.

#. To enable it, choose :menuselection:`Plugins --> Manage Plugins`, then
   scroll down or type ``sextante`` into the Filter box and select
   the `SEXTANTE` plugin. Then click :guilabel:`Ok`.

   * A new `Analysis` menu and toolbar will appear.

#. Choose :menuselection:`Analysis --> Sextante Toolbox`.

   * A new toolbar will open on the right side of the screen with many
     processing tools to choose from. Take some time and have a look around.


Using the OpenStreetMap plugin
================================================================================

.. HB: I've re-added the OSM plugin as it's the richest vector data set
   on the disc and it's just a darn pretty demo within QGIS.

#. Open the Terminal Emulator from the Xubutu :menuselection:`Applications --> Accessories` menu.

   * Cut and paste the following commands into the Terminal window to create
     a working copy of the OSM data in the home directory:

     ::
     
       cp data/osm/feature_city_CBD.osm.bz2 .
       bzip2 -d feature_city_CBD.osm.bz2

#. In QGIS, choose :menuselection:`File --> New Project`. If you had the
   SEXTANTE Toolbox open you might want to close it.

#. Choose :menuselection:`Plugins --> Manage Plugins`.

   .. image:: ../../images/screenshots/1024x768/qgis_osm_plugin.png
     :scale: 50 %
     :alt:  The OpenStreetMap plugin
     :align: right

#. Scroll down or type ``open`` into the Filter box and select
   the `OpenStreetMap` plugin. Then click :guilabel:`Ok`.

   * A new `Web` menu and toolbar will appear and a toolbar on the right
     side of the map canvas.

#. Choose :menuselection:`Web --> OpenStreetMap --> Load OSM from file`.

#. Click on the "..." button and select the `feature_city_CBD.osm` file you
   just copied into the home directory.

#. Tick the `name`, `highway`, and `amenity` check boxes.

#. Choose :guilabel:`Medium scale` rendering, then click :guilabel:`Ok`.

#. You can now explore this rich dataset. Use the ``i`` information cursor
   button in the `OSM Feature Manger` side-toolbar to query individal map features.


What Next?
================================================================================

Tutorials for more advanced features of QGIS are collected
as `OSGeo-Live QGIS tutorials`_.

To learn more about QGIS, a good starting point is the `Documentation page`_ on
the QGIS homepage.

`A Gentle Introduction to GIS`_ `[1]`_ eBook and the `QGIS User Guide`_ `[2]`_ are
also included on OSGeo-Live.

.. _`OSGeo-Live QGIS tutorials`: ../../qgis/tutorials/en/
.. _`Documentation page`: http://www.qgis.org/en/documentation.html
.. _`A Gentle Introduction to GIS`: http://docs.qgis.org/html/en/docs/gentle_gis_introduction/index.html
.. _`QGIS User Guide`: http://docs.qgis.org/html/en/docs/user_manual/index.html
.. _`[1]`: ../../qgis/qgis-1.0.0_a-gentle-gis-introduction_en.pdf
.. _`[2]`: ../../qgis/QGIS-1.8-UserGuide-en.pdf

