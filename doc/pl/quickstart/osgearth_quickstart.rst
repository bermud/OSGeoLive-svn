:Author: OSGeo-Live
:Author: Pirmin Kalberer
:Translator: Milena Nowotarska, OSGeo
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-osgearth.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Wprowadzenie do osgEarth 
********************************************************************************

osgEarth is a scalable terrain rendering toolkit for OpenSceneGraph_.

.. _OpenSceneGraph: http://www.openscenegraph.org/

To wprowadzenie opisuje jak uruchomi� 3D globe z r�nymi overlays.


Praca z osgearth_viewer
================================================================================

* Otw�rz konsol� i uruchom osgearth viewer::

   export OSG_FILE_PATH=/usr/share/osgearth
   osgearth_viewer --window 50 50 900 700 /usr/share/osgearth/maps/srtm.earth

Powiniene� zobaczy� glob ze scenami satelitarnymi.

* Kliknij, aby nawigowa� globem; prawoklik lub k�ko myszyoperuje zbli�eniami.
* Przeci�gnij mysz z wci�ni�tymi oboma klawiszami by skr�ci�.
* Naci�nij :kbd:`h` by uzyska� pomoc.
* Naci�nij klawisz :kbd:`ESCAPE` aby wyj��. 


Praca z osgviewer i nak�adk� OpenStreetMap
================================================================================

* Wpisz w konsoli::

   osgviewer /usr/share/osgearth/maps/openstreetmap.earth

*  Wci�nij :kbd:`h` by wy�wietli� pomoc. Wi�cej pomocy znajdziesz na openscenegraph.org_.

.. _openscenegraph.org: http://www.openscenegraph.org/projects/osg/wiki/Support/UserGuides/osgviewer


Co dalej?
================================================================================

Aby dowiedzie� si� wi�cej na temat osgEarth, zacznij od `Documentation page`_ na Wiki.

.. _`Documentation page`: http://osgearth.org/wiki/Documentation
