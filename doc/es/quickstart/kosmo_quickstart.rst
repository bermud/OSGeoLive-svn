:Author: Sergio Baños Calvo
:Version: osgeo-live4.0
:License: Creative Commons

.. _kosmo-quickstart:
 
.. image:: ../../images/project_logos/logo-Kosmo.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.opengis.es/index.php?lang=en

*************************
Kosmo Desktop Quick Start 
*************************

Inicio r�pido de Kosmo Escritorio
*************************

Kosmo Escritorio es un amigable cliente SIG de escritorio que permite explorar, editar
y analizar datos espaciales desde una variedad de bases de datos, formatos vectoriales y formatos raster.

Este inicio r�pido describe c�mo:

* Iniciar la aplicaci�n
* Cargar capas de archivos, bases de datos y servicios OGC
* Navegar a trav�s del mapa
* Aplicar un estilo a las capas cargadas

	
	
Iniciar Kosmo Escritorio
===================

Para iniciar la aplicaci�n, siga los siguientes pasos:

.. SBC: Add screenshots to this option, one for each step

* En el men� Inicio, seleccione *Geoespacial > SIG de escritorio > Kosmo*
* La aplicaci�n tomar� unos segundos para iniciarse (se muestra una pantalla de bienvenida al cargar)
* En el cuadro de di�logo de bienvenida, seleccione la opci�n *Crear un nuevo proyecto > Nueva vista* y presione el bot�n *Aceptar*
* En el cuadro de di�logo de selecci�n de sistema de referencia espacial, pulse el bot�n *...*
* Seleccione la opci�n *EPSG* en la lista desplegable con los tipos de SRS, inserte el texto '4236' en el campo de texto y presione el bot�n *Buscar*
* Seleccione el SRS EPSG:4326 - WSG4 y presione el bot�n *Aceptar*
* Pulse el bot�n *Aceptar* otra vez para seleccionar el SRS cargado. La vista se iniciar� con EPSG:4326 como la proyecci�n base

.. tip::
  Puede ver qu� proyecci�n ha sido seleccionada como base para una vista espec�fica en la barra de t�tulo de la ventana de vista, a la derecho del nombre de la vista

	
Ventana principal de Kosmo Escritorio
=========================

La ventana principal de Kosmo Cliente de Escritorio tiene las siguientes secciones:

.. imagen::.../../images/screenshots/1024x768/kosmo_main_window.jpg

* Men� principal
* Barra de herramientas
* �rbol de capas

  El �rbol que contiene las categor�as y las capas que han sido cargadas en la vista actual.

* Mapa
* Barra de Estado

  Muestra al usuario los mensajes de advertencia de la aplicaci�n.

* Coordenadas actuales del cursor
    
	
Cargar capas
==============

Archivos
-----

Para empezar, vamos a cargar algunos de los datos de ejemplo incluidos en el LiveDVD:

#. Elija la opci�n *Vista > Cargar datos... * o presione el bot�n en el signo m�s (+) verde de la barra principal de herramientas
#. En la lista desplegable *Formato*, seleccione *Shapefile*
#. En el selector de archivos, seleccione el archivo `countries.shp` en el directorio `/home/user/data/udig-data/data-v1.2`
#. Pulse el bot�n *Aceptar* para cargar el archivo shapefile seleccionado
#. En el �rbol de capas, pulse la casilla de visibilidad para hacer visible la capa
#. Elija la opci�n *Vista > cargar datos...* o presione en el signo m�s (+) verde de la barra principal de herramientas
#. En lista desplegable *Formato*, seleccione *Archivo de imagen*
#. En el selector de archivos, seleccione el archivo `clouds.jpg` dentro del directorio `/home/user/data/udig-data/data-v1.2`
#. Pulse el bot�n *Aceptar* para cargar el archivo de imagen seleccionado
#. En el �rbol de capas, marque la casilla de visibilidad para hacer visible la capa
#. Puede ver que el orden de la capa dibujada se muestra de abajo a arriba en el �rbol de capas: para modificar el orden de las capas arr�strelas a fin de mostrarlas correctamente


  .. image:: ../../images/screenshots/1024x768/kosmo_load_file_example.jpg

.. note::
  El LiveDVD contiene algunos archivos de datos de ejemplo en el siguiente directorio:

  * `~/data` (a short cut to `/usr/local/share/data`)
  * `/home/user/data/udig-data/data-v1.2`
      
	
Intente cargar m�s ejemplos de estos directorios. Recuerde que debe seleccionar el formato correcto en la lista desplegable *Formato*

.. Tip::
  Es posible a�adir todas las im�genes de un directorio como una �nica capa, seleccione el directorio principal en el di�logo *Cargar datos*: Kosmo Desktop   cargar� las im�genes como un mosaico.

Bases de datos
---------

Vamos a cargar una tabla de una base de datos de ejemplo

#. Elija la opci�n *Vista > Carga datos...* o presione el bot�n con un signo m�s (+) verde en la barra de herramientas principal
#. En la lista desplegable *Formato*, seleccione *Base de datos*
#. Rellene los campos nombre del servidor, puerto, nombre de la base de datos, nombre de usuario y contrase�a con los siguientes valores:

* Nombre del servidor: localhost
* Puerto: 5432
* Nombre de la base de datos: natural_earth
* Usuario: user
* Contrase�a: user

#. Presione el bot�n *Conectar* para cargar las tablas presentes en la base de datos *natural_earth*
#. Marque la casilla correspondiente a la tabla *10m_populated_places_simple*
#. Presione el bot�n *Aceptar* para cargar la tabla seleccionada de la base de datos
#. En el �rbol de capas, marque la casilla de visibilidad para hacer visible la capa

	
Servicios OGC
------------

#. Inicie el servicio WMS de GeoServer incluido en el LiveDVD seleccionando la opci�n *Geospacial > Servidores web > Iniciar GeoServer*
#. Pulse el bot�n *Carga servicio IDE* en la barra de herramientas principal para abrir el asistente
#. En *Seleccionar tipo de servicio SDI*, escoja la opci�n *Servicio WMS* y pulse el bot�n *Siguiente*
#. En *Seleccionar el Localizador uniforme de recursos (URL)*, escriba la direcci�n URL http://localhost:8082/geoserver/ows en el correspondiente campo de texto y presione el bot�n *Conectar*
#. Si la conexi�n es correcta, pulse el bot�n *Siguiente* para ir al panel siguiente.
#. Seleccione la capa `North America Sample Imagery` y pulse el bot�n *>* para moverlo a la lista de la derecha. Prensa el bot�n *Siguiente*.
#. Deje las opciones predeterminadas cargadas y presione el bot�n *Terminar* para iniciar la carga de la capa
#. En el �rbol de capas, pulse la casilla de visibilidad para hacer visible la capa
#. Seleccione la capa en el �rbol de capas y la presione el bot�n *Zoom a la capa* para centrar el mapa en la vista de la capa WMS


  .. image:: ../../images/screenshots/1024x768/kosmo_load_wms_results.jpg


.. note::	
 Kosmo Cliente de Escritorio contiene una lista de servidores WMS predeterminada (la mayor�a son de Espa�a).
 Si est� conectado a internet, puede utilizarlos como se describe en el ejemplo con el servidor local.


	
Mapa de herramientas de navegaci�n
====================

Puede controlar donde se localiza el mapa en el mundo utilizando las herramientas de navegaci�n presentes en la barra de herramientas principal:

1. |ZOOM| Acercarse/Alejarse

  .. |ZOOM| image:: ../../images/screenshots/800x600/kosmo_zoom.gif

	
	
  * Es la herramienta seleccionada de forma predeterminada al iniciar su sesi�n
  * Utilice el bot�n izquierdo del rat�n para acercar una cantidad fija al hacer clic en un punto del mapa
  * Utilice el bot�n derecho del rat�n para alejar una cantidad fija al hacer clic en un punto del mapa
  * Pulse el bot�n izquierdo del rat�n, mueva el rat�n, dibuje un rect�ngulo y suelte el bot�n si desea ampliar la zona delimitada por el rect�ngulo
  
2. |PAN| Desplazarse
  
  .. |PAN| image:: ../../images/screenshots/800x600/kosmo_pan.gif

	
  * Permite moverse por el mundo sin cambiar la escala
  * Pulse el bot�n izquierdo del rat�n, mueva el rat�n y liberelo para mover el mapa a la ubicaci�n deseada
      
3. |ZOOM_PREV| Zoom Anterior

  .. |ZOOM_PREV| image:: ../../images/screenshots/800x600/kosmo_zoom_prev.gif
  	
  * Permite hacer un zoom a la visualizaci�n anterior desde el historial de zoom (si est� disponible)
  
4. |ZOOM_NEXT| Zoom Siguiente

  .. |ZOOM_NEXT| image:: ../../images/screenshots/800x600/kosmo_zoom_next.gif
  
  * Permite hacer un zoom a la visualizaci�n siguiente desde el historial de zoom (si est� disponible)
    
5. |ZOOM_FULL_EXTENT| Zoom a Escala Completa

  .. |ZOOM_FULL_EXTENT| image:: ../../images/screenshots/800x600/kosmo_zoom_to_full_extent.gif
  
  * Permite cambiar el nivel de zoom del mapa para incluir en la vista todas las capas visibles
  
6. |ZOOM_TO_LAYER| Zoom a la Capa

  .. |ZOOM_TO_LAYER| image:: ../../images/screenshots/800x600/kosmo_zoom_to_layer.gif
  
  * Modifica la vista a una escala que permita visualizar completamente la capa seleccionada en el �rbol de capas.
    
7. |ZOOM_TO_SELECTED_ITEMS| Zoom a los elementos seleccionados

  .. |ZOOM_TO_SELECTED_ITEMS| image:: ../../images/screenshots/800x600/kosmo_zoom_to_selected_items.gif
  
  * Modifica la vista a una escala que permita visualizar completamente aquellos elementos seleccionados.
    
8. |PAN_TO_CLICK| Centrar mapa

  .. |PAN_TO_CLICK| image:: ../../images/screenshots/800x600/kosmo_pan_to_click.gif

  Centra el mapa en el punto donde se ha hecho clic, sin cambiar la escala actual
  
9. |COORDINATE_LOCALIZATION| Localizaci�n por coordenadas

  .. |COORDINATE_LOCALIZATION| image:: ../../images/screenshots/800x600/kosmo_coordinate_localization.gif
  
  * Centra el mapa en las coordenadas X-Y indicadas

  Aparte de estas herramientas, tambi�n est� disponible la posibilidad de Acercarse/Alejarse del mapa
  mediante el uso de la rueda del rat�n.

.. note::
	
  Si se deshabilita cualquier herramienta/opci�n, puede colocar el cursor sobre el
  bot�n/opci�n para ver una informaci�n que muestra la raz�n.

Estilo
=======

En esta secci�n vamos a asignar un estilo por rango a una capa con la poblaci�n del pa�s como atributo de estilo

#. Seleccione la capa `countries` en el �rbol de capas
#. Pulse con el bot�n derecho del rat�n sobre ella y seleccione la opci�n *Simbolog�a > Cambiar Estilos...*
#. Haga clic en la ficha 'Colores tem�ticos'
#. Active las opciones *Activar Colores tem�ticos* y *Por intervalo*
#. Seleccione `POP_CNTRY` como *Atributo*, 8 como *Intervalo* y RYB (Color Brewer) como *Esquema de color*
#. Pulse el bot�n *Aceptar* para aplicar los cambios

  .. image:: ../../images/screenshots/1024x768/kosmo_styled_layer_by_range.jpg

	
	
Cosas para probar
=============

* Utilice el editor de estilo avanzado (`Simbolog�a > Editor avanzado de estilo`) para crear estilos m�s complejos
* Utilice el Asistente para consultas para seleccionar las entidades que cumplan un criterio
* Active el modo de edici�n de capa y utilice las herramientas disponibles para editarla
* Genere un conjunto de reglas topol�gicas para una capa e intente editarla
* Active el conjunto de extensiones que forman parte de la aplicaci�n y ver� las nuevas herramientas que incorporan


�Y ahora qu�?
==========

Hay un conjunto de manuales y video disponible en http://www.opengis.es

