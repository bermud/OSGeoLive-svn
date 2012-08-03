:Author: Howard Butler
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-libLAS.png
  :alt: Logo du projet
  :align: right
  :target: http://liblas.org/

libLAS
================================================================================

Acc�s aux donn�es LiDAR
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

libLAS est une biblioth�que C/C++ pour lire et �crire le format tr�s courant 
pour le `LiDAR`_ , `LAS`. Le `format LAS ASPRS`_ est un format s�quentiel binaire 
utilis� pour stocker des donn�es de capteurs LiDAR et par les logiciels de 
traitement de donn�es LiDAR pour l'�change et l'archivage.

.. image:: ../../images/screenshots/800x600/liblas.jpg
  :alt: Acquisition LiDAR
  :align: right
  :scale: 80 %
  
Le LiDAR (Light Detection and Ranging) est une forme de d�tection d'intervalles 
de distance haute-pr�cision un peu comme l'est un syst�me radar qui utilise un 
laser lumineux comme �mission �lectromagn�tique. Un des produits issu des 
syst�mes LIDAR est une donn�e de nuages de points qui peut �tre conceptualis�e 
en une s�rie de mesures de points repr�sentant la distance du capteur par rapport 
� l'�mission retourn�e. Un format de stockage courant pour ces donn�es de nuages 
de points est le format LAS ASPRS.

Caract�ristiques principales
--------------------------------------------------------------------------------

* API C/C++/Python pour lire, �crire et manipuler des donn�es LAS
* `Utilitaires en ligne de commande`_ pour manipuler les donn�es LAS bas� sur `LAStools`_
* Reprojection de coordonn�es via `GDAL <http://gdal.org>`__

D�tails
--------------------------------------------------------------------------------
 
**Site web:** http://liblas.org

**Licence:** BSD

**Version du logiciel:** 1.7.0

**Plates-formes support�es:** Cross Platform C++ -- Mac OS X, Windows (via `OSGeo4W`_), and Linux

**Interfaces de l'API:** C, C++, Python

**Support:** `Communication et support <http://liblas.org/community.html>`_

Guide de d�marrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de d�marrage rapide <../quickstart/liblas_quickstart>`

.. _`LIDAR`: http://en.wikipedia.org/wiki/LIDAR
.. _`LAStools`: http://www.cs.unc.edu/~isenburg/lastools/
.. _`Format LAS`: http://www.lasformat.org/
.. _`Comit� des standards ASPRS`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`Format LAS ASPRS`: http://www.asprs.org/society/committees/standards/lidar_exchange_format.html
.. _`Utilitaires en ligne de commande`: http://liblas.org/utilities/index.html
.. _`OSGeo4W`: http://trac.osgeo.org/osgeo4w/
.. _`Wikipedia`: http://en.wikipedia.org/wiki/LIDAR
