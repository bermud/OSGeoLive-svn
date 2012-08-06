:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

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
================================================================================

SIG bureautique
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

gvSIG est une application bureautique de Syst�me d'Information G�ographique (SIG)
con�ue pour saisir, stocker, manipuler, analyser et d�ployer toutes sortes d'information
g�ographique afin de r�soudre des probl�mes de gestion complexe et d'am�nagement.
gvSIG est connu pour son interface faicle � utiliser et il est capable
d'acc�der � tous les formats communs vecteur et raster. Il offre
un grand nombre d'outils pour travailler avec de l'information g�ographique (requ�te,
cr�ation de mise en page, g�otraitements, r�seaux, etc.), qui font de gvSIG un outil
id�al pour les utilisateurs qui travaillent dans le domaine terrestre.

gvSIG est connu pour:

* int�grer dans la m�me vue aussi bien des donn�es locales qu'� distance gr�ce aux standards de l'OGC.
* �tre facilement �tendu, permettant une am�lioration continue de l'application, 
  aussi bien que de permettre le d�veloppement de solutions sur mesure.
* �tre disponible dans plus de 20 langues (Espagnol, Anglais, Allemand, Fran�ais 
  Italien,...) .
* �tre disponible sur les plateformes Windows, Linux, et Mac OS X:

.. image:: ../../images/screenshots/1024x768/gvsig_desktop.png
  :scale: 50 %
  :alt: screenshot
  :align: right

El�ments centraux
--------------------------------------------------------------------------------

* Fournit des outils de SIG courants tels le chargement de donn�es, la navigation cartographique, les requ�tes 
  d'informations cartographiques tout comme alphanumeriques, la mesure de distances, la cartographie th�matique,
  l'�dition de l'�gende en utilisant les types de l�gende courants, l'�tiquetage,
  la s�lection d'entit�s par de nombreux types de s�lection, les tables de donn�es avec des statistiques,
  le tri, les relations entre, les liens entre tables, la gestion des mises en page, les outils de g�otraitement,
  la DAO, le traitement raster etc.

* Interop�rabilit�: capable de travailler avec les formats de donn�es les plus connus:

  * raster : ecw,  ENVI hdr, ERDAS img, (Geo)TIFF, GRASS, ...
  * vecteur & DAO: shapefile, GML, KML, DGN, DXF, DWG
  * bases de donn�es: PostGIS, MySQL, Oracle, ArcSDE
  * t�l�d�tection: ECWP, ArcIMS, standards OGC

* Client de services de recherche pour localiser des ressources de donn�esdans une SDI (Spatial Data Infrastructure)
 (services de cataloguage et de g�or�f�rencement)
  
  * Catalogues: Z3950, SRW, CSW (ISO/19115 and ebRIM)
  * G�or�f�rencement: ADL, WFS, WFS-G
  
* Plus de 290 algorithmes spatiaux gr�ce � l'int�gration des librairies SEXTANTE et GRASS
  
* Outils de dessin avanc�s :

  * donn�es vecteur: modification, cr�ation et suppression d'�l�ments
  * console de commande d'�lements types dans les logiciels de DAO
  * outils comme l'aide, la grille, encha�nement de commandes, s�lections d'�l�ments complexes
  * outils pour l'insertion d'�l�ments comme des points, des polygones, des lignes, des ellipses, etc...
  * outils pour modifier la rotation, la sym�trie,...
  
* Outils raster avanc�s:

  * g�or�f�rencement et reprojection
  * exportation, d�coupage
  * l�gendes, histogrammes
  * filtres, vectorisation
  * vues d'ensembles et gestion de r�gions d'int�r�t

* Support de scripts
* Outil de reprojection puissant � partir de PROJ4


Standards impl�ment�s
--------------------------------------------------------------------------------

Support avanc� comme client de nombreux standards de l'Open Geospatial Consortium (OGC)

* Chargement de couches WMS, WFS et WCS 
* Export/import de l�gendes SLD
* Export/import de Web Map Context (WMC)
* Recherches dans des catalogues avec CSW (ISO/19115 et ebRIM)
* Recherche sur des services de g�or�f�rencement utilisant la recommandation WFS-G

D�tails
--------------------------------------------------------------------------------

**Site Web:** http://www.gvsig.org/

**License:** GNU General Public License (GPL) version 2

**Version du logiciel:** 1.11

**Platformes support�es:** Windows, Linux, Mac

**Support:** http://www.gvsig.org/web/organization/services


.. _gvSIG: http://www.gvsig.org

D�marrage rapide
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/gvsig_quickstart>`