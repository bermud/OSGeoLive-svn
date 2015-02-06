:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live8.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-otb.png
  :alt: project logo
  :align: right
  :target: http://www.orfeo-toolbox.org/

OTB
================================================================================

Image Processing
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ORFEO Toolbox Library (OTB) is a high performance image processing library. It
is primarily used for processing large remote sensing images such as those
gathered by radars, satellites and aerial photography. OTB provides tools for
the future optic and radar images (tridimensional aspects, segmentation,
classification, changes detection, texture analysis, pattern matching, and
optic/radar complementarities), many of which can be run on limited-resourced
laptops.

OTB is shipped with a fully integrated user interface called Monteverdi which
allows users to select OTB processing chains from a set of menus.

OTB has been funded the French Space Agency (CNES) in the frame of the
Methodological Part of the ORFEO/Pleiades Accompaniement Program and has been
actively developed since 2006. It is based on the ITK image processing library
and is distributed as open source.

Core Features
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/1024x768/otb-monteverdi2-screenshot.jpg
  :scale: 50 %
  :alt: screenshot
  :align: right

* image access: optimized read/write access for most remote sensing (including Jpeg2000 imagery through OpenJPEG)
  image formats, meta-data access and visualization;
* orthorectification using DEM, map reprojection and sensor model refinement
* calibration
* image fusion
* filtering: blurring, denoising, enhancement...
* feature extraction: interest points, alignments, lines...
* object detection
* large scale image segmentation: region growing, mean-shift, watershed, level sets...
* classification: K-means, Markov random fields, access to machine learning algorithms from OpenCV
* object-based image analysis
* geospatial analysis
* stereoscopic reconstruction from optical images
* SAR data analysis
* change detection.

Details
--------------------------------------------------------------------------------

**Website:** http://www.orfeo-toolbox.org/

**Licence:** CeCILL (CeCILL is compatible with GPL and enhanced to
  address French law)

**Software Version:** 4.2.1

**Supported Platforms:** Linux, Mac, Windows

**API Interfaces:** C++

**Commercial Support:** http://www.osgeo.org/search_profile


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/otb_quickstart>`

