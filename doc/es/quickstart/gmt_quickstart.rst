:Author: Hamish Bowman
:Version: osgeo-live4.0
:License: Creative Commons

.. _gmt-quickstart:
 
.. image:: ../../images/project_logos/logo-GMT.gif
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://gmt.soest.hawaii.edu

**************
Gu�a de inicio r�pido para GMT 
**************

Ejecuci�n de GMT
=======

Incluido en este LiveDVD esta la documentaci�n de GMT en formatos (HTML y PDF),
algunos scripts de ejemplo (incluida la l�nea costera de todo el mundo en baja resoluci�n),
un tutorial en formato (HTML y PDF), y los datos correspondientes del tutorial.

Documentaci�n en HTML y PDF y un tutorial se puede encontrar en
 `/usr/share/doc/gmt/html/ <file:///usr/share/doc/gmt/html/index.html>`_,
Ejemplos se pueden encontrar en
 `/usr/share/doc/gmt-examples/examples/ <file:///usr/share/doc/gmt-examples/examples/>`_,
Los datos del tutorial se puede encontrar en
 `/usr/share/doc/gmt-tutorial/tutorial/ <file:///usr/share/doc/gmt-tutorial/tutorial/>`_.

la l�nea costera de todo el mundo a baja resoluci�n se puede encontrar en /usr/share/gmt/coast/.

.. paquetes:
  gmt-doc (and -pdf)
  gmt-coast-low
  gmt-examples 
  gmt-tutorial (and -pdf)


Ejemplos
~~~~~~~~

Hay 29 rutinas de ejemplo construidas y un script para ejecutarlas todas:

Abrir una ventana de terminal, y despu�s escribir:

::

  cp -r /usr/share/doc/gmt-examples/examples/ gmt-examples
  cd gmt-examples/
  ./do_examples.sh

`[Abracadabra .. Magia ..]`

Vea los resultados: ( Escriba 'q' para salir de gv)

::

  for PLOT in `find . -name *.ps` ; do
     echo "$PLOT"
     gv "$PLOT"
  done
  
  
Vea tambi�n:
---------

* **Sitio web de GNU GV** - Ghostview  http://www.gnu.org/software/gv/




