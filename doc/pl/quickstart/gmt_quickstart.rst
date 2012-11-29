:Author: Hamish Bowman
:Translator: Milena Nowotarska, OSGeo
:Version: osgeo-live6.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Copyright: 2011 by The OSGeo Foundation

.. image:: ../../images/project_logos/logo-GMT.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

********************************************************************************
Wprowadzenie do GMT
********************************************************************************

Jak zacz��
================================================================================

Na tym LiveDVD jest dokumentacja GMT (HTML i PDF),
przyk�adowe skrypty (oraz linia brzegowa �wiata w niskiej rozdzielczo�ci),
�wiczenia (HTML i PDF) oraz zestaw danych do �wicze�.

Dokumentacja i �wiczenia HTML i PDF znajduj� si� tu
  `/usr/share/doc/gmt/html/ <../../gmt/html/index.html>`_,
przyk�ady s� tu
  `/usr/share/doc/gmt-examples/examples/ <../../gmt-examples/examples/>`_,
dane do �wicze� znajdziesz tu
  `/usr/share/doc/gmt-tutorial/tutorial/ <../../gmt-tutorial/tutorial/>`_.

Lini� brzegow� niskiej rozdzielczo�ci znajdziesz tu :file:`/usr/share/gmt/coast/`.

.. packages:
  gmt-doc (and -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (and -pdf)


Przyk�ady
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Znajdziesz 29 gotowych przyk�ad�w i skrypt do ich uruchomienia:

Otw�rz terminal, potem

::

  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.csh

`[whiz .. bang .. whirl]`

Zobacz rezultaty: (within :command:`gv` [#gv]_, type :kbd:`q` to quit)

::

  for PLOT in *.ps ; do
     echo "$PLOT"
     gv "$PLOT"
  done

.. Rubric:: Footnotes
.. [#gv] Ghostview  http://www.gnu.org/software/gv/
