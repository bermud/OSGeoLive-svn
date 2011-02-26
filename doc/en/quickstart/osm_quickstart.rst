:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. _osm-quickstart:
 
.. image:: ../../images/project_logos/logo-osm.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.osm.org


************************
OpenStreetMap Quickstart 
************************

Programs
========

JOSM
~~~~

**JOSM** (Java OpenStreetMap Editor) is an editor for OpenStreetMap (OSM)
written in Java. The current version supports stand alone GPX tracks,
GPX track data from OSM database and existing nodes, line segments and
metadata tags from the OSM database.

* Homepage: http://josm.openstreetmap.de

The JOSM plugin collection contains the following plugins:

* agpifoj	     - Creates a new layer with geotagged pictures.
* colorscheme	     - Allows to create different color schemes.
* livegps	     - Supports live GPS input together with gpsd.
* measurement	     - Adds a dialog and a layer to measure length and angle of segments and create measurement paths.
* openvisible	     - Allows opening gpx and osm files that intersect the currently visible screen area.
* slippymap	     - Displays a slippy map grid in JOSM.
* surveyor	     - Allows adding markers/nodes on current gps positions.
* utilsplugin	     - Several helper utilities.
* validator	     - Data validator.
* wmsplugin	     - Displays background images from any WMS source.


Further reading
---------------

* Online tutorial: http://www.use-it.be/europe/docs/OSMmanual/
* User guide: http://wiki.openstreetmap.org/wiki/JOSM/Guide
* `Video tutorial <http://showmedo.com/videotutorials/video?name=1800050&amp;fromSeriesID=180>`_
* Open the sample data with :menuselection:`File --> Open... --> /usr/local/share/data/osm/feature_city.osm.bz2`
* Further instructions are given when you launch the application.


Merkaartor
~~~~~~~~~~

**Merkaartor** is a map editor for OpenStreetMap which uses the Qt toolkit.
It's a bit more user friendly than JOSM, but has a few less features.

* Homepage: http://merkaartor.be
* Online help: http://www.merkaartor.org/Documentation/


Gosmore
~~~~~~~

**Gosmore** is a OpenStreetMap viewer, wayfinder, and search client
with support for speech synthesis and fetching the current user's
current GPS location using `gpsd <http://gpsd.berlios.de>`_.

* Homepage: http://wiki.openstreetmap.org/index.php/Gosmore
* Online wiki help: http://wiki.openstreetmap.org/wiki/Gosmore#User_Interface
* Before running Gosmore you will need to convert a `planet-*.osm` data file. Some data is provided in the `/usr/local/share/osm/` directory.

Import it with:

::

  bzip2 -dc /usr/local/share/data/osm/feature_city.osm.bz2 | gosmore rebuild

This will create gosmore.pak.


Osmarender
~~~~~~~~~~

**Osmarender** is a rule-based rendering tool for generating SVG images of
OSM data. It takes as its input an OpenStreetMap dataset and a rules file.
It outputs an SVG image that is marked up in accordance with the styles
defined in the rule file.

* Homepage: http://wiki.openstreetmap.org/wiki/Osmarender

Example:

.. note:: This requires approx. 1 GB free RAM and takes a few days to process
   the full city. A single village or suburb extract should be much more manageable.
   See `Xapi <http://wiki.openstreetmap.org/wiki/Xapi>`_ in the OSM Wiki for
   details on how to download smaller chunks into an ``.osm`` file, or use
   *JOSM* or *Merkaartor* to download a smaller chunk.

::

  cp /usr/local/share/data/osm/feature_city.osm.bz2 .
  bzip2 -d feature_city.osm.bz2
  osmarender feature_city.osm

You can view the results in a SVG viewer like `Inkscape` or `Firefox`:

::

  firefox feature_city.svg


osm2pgsql
~~~~~~~~~

**osm2pgsql** is a utility program that converts OpenStreetMap (.OSM) data
into a format that can be loaded into PostgreSQL (PostGIS). It is often
used to render OSM data visually using Mapnik, as Mapnik can query
PostgreSQL for map data, but does not work directly with OSM files.

* Homepage: http://wiki.openstreetmap.org/wiki/Osm2pgsql

