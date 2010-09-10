:Author: Ian Turton
:Version: osgeo-live4.0
:License: Creative Commons
:Thanks: geoserver-user list

.. |GS| replace:: GeoServer
.. |PG| replace:: PostGIS
.. |UG| replace:: uDig 
.. |OL| replace:: OpenLayers

.. _geoserver-quickstart:
 
.. image:: images/project_logos/logo-GeoServer.png
  :alt: project logo
  :align: right

********************
GeoServer Quickstart 
********************

GeoServer is a java application for serving maps (and data) for other
clients to draw.

This Quick Start describes how to:

  * add a vector and raster data source to GeoServer
  * apply color to map features using styling
  * test the layers in a simple web map
  * learn about clients that can display your maps

Start |GS|
==========

#. Select the "Start GeoServer" icon.
#. The application will take a few moments to start up
#. Go to the GeoServer web page at http://localhost:8082/geoserver/web 

.. image:: images/screenshots/800x600/geoserver-login.png
    :width: 90 %
    :align: left


First Views
===========

When you first open the |GS| page you will see the screen above, first you need to log in using the username admin and password geoserver. You will now see the *admin page* 

.. image:: images/screenshots/800x600/geoserver-welcome.png
    :width: 90%
    :align: left

The **Layer Preview** link at the bottom of the left hand menu allows you to see a preview of the layers that are loaded on the server. 
  
.. image:: images/screenshots/800x600/geoserver-layerpreview.png
    :width: 90%
    :align: left

Scroll to the bottom of the page and click on the **OpenLayers** link in the **tiger-ny** row, this will open a new window with a preview of some of the sample data. 

.. image:: images/screenshots/800x600/geoserver-preview.png
    :width: 90%
    :align: left
    
You can zoom in to the map in three ways:

        * by clicking on the zoom bar on the left, the higher you click on it the more zoomed in you will see.

        * by using the mouse scroll wheel (if you have one), scrolling up will zoom in and down will zoom out.

        * by dragging a box on the map while holding down the :kbd:`shift key` - this will zoom in to the box selected (or as near as will fit in the screen).

#. Experiment with this view and look at some of the other previews.  Once you are happy with looking at data you can move on to adding some new data.

Loading Data
============

.. note::
    You will not be able to carry out the following steps if you are
    running with a **read only** file system (such as the DVD). You
    will either need to install GeoServer from the DVD to your
    hard drive or  create a USB stick based system.


In this example we are going to use the `Natural Earth data set
<http://naturalearthdata.com>`_ that is included on the Live-DVD
(:file:`/usr/local/share/data/natural_earth/`).

First we need to copy the data to the GeoServer data directory
(:file:`/usr/lib/geotools-2.0.2/data_dir/data`). I created a folder
called :file:`naturalearth`. I used a terminal window, but I expect you
can do the same thing in the file manager if you prefer.  ::

        cd /usr/lib/geotools-2.0.2/data_dir/data
        mkdir naturalearth
        cp /usr/local/share/data/natural_earth/* naturalearth
     

Now we need to create a Store for our data. From the |GS| admin page go
to :guilabel:`Stores` and then click on :guilabel:`Add new Store`. You
will see this page:

.. figure:: images/screenshots/800x600/geoserver-newstore.png
    :align: center
    :width: 90%
    
    *The New Store page*

Select the :guilabel:`Directory of spatial files`, you will see the following: 

.. figure:: images/screenshots/800x600/geoserver-new-vector.png
    :align: center
    
    *Filling in the New Store page*

Type in a name for the Data Store - I used *Natural Earth* and fill in
the URL to the data set - in this case :file:`data/naturaleath`. The
URL is relative to the |GS| data directory. Press :guilabel:`save`.

.. figure:: images/screenshots/800x600/geoserver-naturalearth.png
    :align: center 
    :width: 100%

    *The Natural Earth Datastore*

Press :guilabel:`publish` next to one of the layers to finish up adding
the data. This will take you to the *Layers* page:

.. figure:: images/screenshots/800x600/geoserver-publish.png
    :align: center
    :width: 90%

    *The layer publishing page*

As you scroll down the page you will see that |GS| has filled in many of
the fields for you. When you reach :guilabel:`Coordinate Reference System`
you will notice that under *Native SRS* that it says UNKNOWN [#esri]_
you will need to fill in the next box (*declared SRS*) to make sure |GS|
knows where the data is. For the time being trust me and type epsg:4326 in
the box, if you don't trust me then go to `http://prj2epsg.org/search` and
paste in the string you see if you click on the link next to "UNKNOWN".
Then click on :guilabel:`Compute from data` and :guilabel:`Compute from
native bounds` to fill in the Bounding Boxes. Finally hit :guilabel:`save`
and you have published your first layer.

.. note::
    If you look at this layer in the layer preview it doesn't look
    very good but that is just the default style. In the next section
    we will look at producing a nicer style.
    
Styling
-------

To style a data set into a map layer |GS| uses an OGC standard called
Styled Layer Descriptors (SLD). These are represented as XML files
which describe the rules that are used to apply various symbolizers to
the data.

To get started I styled the Land and Ocean datasets. 
You can create SLD files using a simple text editor, but
sometimes a graphical editor is better. There are several options here
but I like to use |UG| (http://udig.refractions.net/) as it allows me
to open the shapefiles directly and apply simple styles using a
GUI, but also provides a simple editor to modify the XML if I need to. 

Using |UG| to create simple styles
``````````````````````````````````

.. note::

   For more details on how to use |UG| see the :ref:`uDig quickstart <udig-quickstart>`

Once I opened |UG| up and added the shapefiles (using the
add data button in the top left hand corner). I dragged the 10m_land
and 10m_ocean tables into the map window. |UG| automatically applies
a style (so you can see the data).

.. figure:: images/screenshots/800x600/geoserver-udig_startup.png
   :align: center
   :width: 90%

   *Default Styling in UDig*

Now obviously an orange ocean will not work (even if I could live
with the green land). So in the :ref:`Layer list <Layer_list>` select the style
button (it looks like an artist's palette). 

.. _Layer_list:
.. figure:: images/screenshots/800x600/geoserver-layer-chooser.png
   :align: center

   *The Layer list window*


This will open the :ref:`Style Pane <Style_Pane>` - in the simple window I can easily
select a nice blue for the oceans by clicking on the colored box by
the fill label and choosing from the color picker it produces. I also
increased the opacity of the fill to 100% to make the color look
better. 

.. _Style_Pane:
.. figure:: images/screenshots/800x600/geoserver-style-pane.png
   :align: center

   *The Style Pane*


Once I was done I clicked ``OK`` and |UG| showed me the
changes. 


.. figure:: images/screenshots/800x600/geoserver-blue-ocean.png
   :align: center
   :width: 90%

   *Blue Oceans*

Finally I prefer a more understated land color than green [#fn1]_ so
I repeated the steps above to change the color of the land layer.
None of the default colors seemed right to me so I went into the
``define custom colors`` section to create one I liked.

.. figure:: images/screenshots/800x600/geoserver-custom-colour.png
   :align: center

   *Defining a nicer land color*

This gives me a nice looking basic world map

.. figure:: images/screenshots/800x600/geoserver-basic-world.png
   :align: center
   :width: 90%

   *A basic word map*

Adding the Style to |GS|
````````````````````````

Now I need to transfer these styles to |GS| - on the style window
there is an export button which allows me to save the SLD file that
defines my style. Once I've saved the two styles I can go to the |GS|
admin page again and select ``Styles`` (at the bottom of the ``Data``
section). Then I select the ``Add New Style`` link, at the bottom of
that page is a file upload box and a browse button. Clicking this
allows me to hunt around on my hard drive to find the files I just
saved. Once I've found one I want, I click the upload link (next to the browse
button) and a copy of my file appears in the editor. 

.. figure:: images/screenshots/800x600/geoserver-add-style.png
   :align: center
   :width: 90%

   *Adding a Style to GeoServer*


Adding the Style to the Layer
------------------------------

Click on the :guilabel:`Layers` link in the Menu on the left of the
|GS| window. Click on the layer (e.g. *10m_land*), then select the 
:guilabel:`Publishing` tab and change the :guilabel:`Default Style`
box to the name of the style you uploaded in the previous section.
Now go to the Layer Preview page to check that it looks good.

.. TBD check where app-data ends up

There are example style files for all of the example Natural Earth
layers in :file:`/usr/local/share/geoserver`. 

.. TBD (needs more memory)
    Adding a Raster
    ===============

    In the Natural Earth folder is a folder :file:`HYP_50M_SR_W` which
    contains a raster image. You can serve this up in |GS| directly by
    going to the stores page and selecting :guilabel:`New Stores->World
    Image` and type
    *file:/home/user/data/natural_earth/HYP_50M_SR_W/HYP_50M_SR_W.tif*
    into the :guilabel:`URL` box.

    .. figure:: images/screenshots/800x600/geoserver-raster.png
        :align: center
        :width: 90%

        *Adding a Raster*

    The click :guilabel:`Save` this will take you to the *New Layers
    Chooser* then click publish and :guilabel:`Save` to finish adding the
    raster. If you go to the Layers Preview page you
    can see the new image. 



Clients for WMS layers
======================

A large variety of clients exist to make use of the WMS layers you are serving
from |GS|. This is a list of just some of them 

    * :ref:`uDig <udig-quickstart>`

    * :ref:`OpenLayers <openlayers-quickstart>`

    * :ref:`Atlas Styler <atlasstyler-quickstart>` 

    * :ref:`MapBender <mapbender-quickstart>`


.. Rubric:: Footnotes
.. [#fn1] If you lived in central Pennsylvania in the summer you
   wouldn't expect green either.
.. [#esri] there is a perfectly good well known text (WKT) for
    projections but ESRI don't use it.
