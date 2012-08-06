:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-saga.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.saga-gis.org


SAGA
================================================================================

SIG bureautique
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SAGA (System for Automated Geoscientific Analyses) est un SIG (Syst�me d'information g�ographique) open utilis� pour l'�dition et l'analyse de donn�es spatiales.
Il inclut un grand nombre de modules pour l'analysie de vecteurs (point, line et polygones), de tables, de grilles et les donn�es images.
Parmi d'autres, le pacquet inlcut mes modules pour les g�ostatistiques, la classification image, les projections, les processus dynamiques de simulation
(hydrologie, d�veloppement des paysages) et l'analyse de terrain. La fonctionnalit� est accessible � partir d'une interface graphique utilisateur (GUI),
la ligne de commande ou en utilisant l'API C++.

SAGA a �t� d�velopp� depuis 2001, et le centre de d�veloppement de SAGA est situ� � l'Institut
de G�ographie de l'Universit� de Hamburg, avec des contributions d'une communaut� mondiale grandissante.

.. image:: ../../images/screenshots/1024x768/saga_overview.png
  :scale: 40%
  :alt: screenshot
  :align: right

El�ments centraux
--------------------------------------------------------------------------------

* Acc�s � un nombre large de modules scientifiques � partir de l'interface graphique utilisateur ou la ligne de commande

 * Import/Export vers diff�rents formats de fichier
 * Reprojection/Re�chantillonnage des donn�es
 * Manipulation de donn�es vecteur (fusion/intersection/attributs)
 * Manipulation de nuage de points � partir de donn�es lidar
 * Donn�es raster: interpolation, analyse de co�ts, ...
 * Analyse d'image: filtres, d�tection. de contours, analyse de cluster, segmentation
 * Analyse de terrain num�rique: g�n�ration d'indices g�omorphom�triques, r�seaux de canaux, profils, lignes de contour, ...
 * G�ostatistiques: modules pour la production de variogrammes adapt�s et krig�s

* Interface utilisateur rapide pour la gestion et la visualisation de donn�es

 * Visualisation 3D

* API simple en C++ pour la cr�ation de nouveaux modules
* Ecriture de scripts avec la ligne de commande, liaisons pour python
* SAGA peut �tre accesssible � partir du langage statistique de R � travers le module RSAGA

D�tails
--------------------------------------------------------------------------------

**Site Web:** http://www.saga-gis.org

**License:** LGPL v2.1 (api); GPLv2 (GUI and modules)

**Logiciels Version:** 2.0.8

**Plateformes support�es:** Windows, Linux, FreeBSD

**Interfaces API:** C++

**Support:** http://www.saga-gis.org


D�marrage rapide
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/saga_quickstart>`