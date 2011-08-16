:Author: Michael Owonibi(m.owonibi@jacobs-university.de), Peter Baumann (p.baumann@jacobs-university.de)
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. _rasdaman-quickstart:
 
.. image:: ../../images/project_logos/logo-rasdaman.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.rasdaman.org


*******************
rasdaman Quickstart 
*******************

.. image:: ../../images/screenshots/800x600/rasdaman_apps_collage.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

rasdaman is a raster database allowing queries on n-D raster data stored.

This Quick Start describes how to try out queries on a sandbox of objects.

Exploring the 1-D to 4-D examples
=================================

    * Go to the EarthLook `Earthlook <http://localhost:8080/earthlook/index.php>`_ demo to explore various demo data sets. The small ones are part of OSGeo-Live, those utilizing larger sets forward directly to the `Earthlook site <http://kahlua.eecs.jacobs-university.de/~earthlook/demos/index.php>`_ . 

Running queries locally
=======================

    * Open a console and open the sample database installed locally
    * use the rasql utility to send queries and receive results, for example::

      $ rasql -q "select png(rgb.1 + rgb.2 ) from rgb" --out file

    * use your favorite image inspection tool to open the file generated.


Create your own database
========================

    * Open a console
    * `Download and install rasdaman <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/Download>`_ and `its prerequisites <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/wiki/RequiredPackages>`_
    * run the demo ingestion script::

      $ install_demo.sh

    * use the rasql utility to send queries and receive results, for example::

      $ rasql -q "select png( rgb.1 + rgb.2 ) from rgb" --out file


Things to Try
=============

Here are some additional challenges for you to try:

    * Explore the demo data sets by browsing the `rasql query language guide <http://kahlua.eecs.jacobs-university.de/trac/rasdaman/browser/manuals_and_examples/manuals/pdf/ql-guide.pdf>`_ 
    * To learn more about the OGC  `Web Coverage Processing Service <http://www.opengeospatial.org/standards/wcps>`_ (WCPS) Language standard (which was heavily inspired by rasdaman), a starting point is the  `documentation and tutorials page <http://kahlua.eecs.jacobs-university.de/~earthlook/tech/interface-wcps.php>`_ . 
