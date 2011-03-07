:Author: OSGeo Live
:Author: Astrid Emde
:Author: Christoph Baudson
:Author: Arnulf Christl
:Version: osgeo-live4.5
:License: Creative Commons
:Thanks: mapbender-user list

.. _mapbender-quickstart:
 
.. image:: ../../images/project_logos/logo-Mapbender.png
  :scale: 100 %
  :alt: project logo
  :align: right

*******************************
Mapbender Gu�a de Inicio R�pido 
*******************************

Mapbender es un entorno de geoportales basado en la web que permite publicar, registrar, ver, navegar, controlar y garantizar el acceso seguro a servicios de Infraestructura de Datos Espaciales.

Las interfaces de administraci�n fortalece la gesti�n de los administradores quienes necesitan mantener y clasificar los servicios web de mapas y de fen�menos, y permitir el acceso a personas, grupos y otros servicios.

Usted no necesitar� nada m�s que un navegador web est�ndar para esta gu�a de inicio r�pido.

Esta gu�a de inicio r�pido describe como:

  * iniciar Mapbender
  * crear una aplicaci�n
  * cargar un Web Map Service (OGC WMS)
  * configurar un servicio WMS
  * crear una aplicaci�n individual
  * crear un usuario y un grupo y asignarles aplicaciones
  * cargar un Web Feature Service (OGC WFS)
  * configurar tipos de elementos o fen�menos y crear una aplicaci�n con opci�n de b�squeda contra un WFS y funcionalidades de digitalizaci�n (vectorizaci�n). 

Iniciar Mapbender
=================

.. TBD: Add menu graphic to this uDig Quickstart

#. Seleccione  :menuselection:`Mapbender` del men� de Inicio

#. La aplicaci�n tomar� unos pocos momentos en levantar

Si ud. tiene algunas dificultades al ejecutar Mapbender, por favor verifique que su servidor web Apache y su manejador de base de datos PostgreSQL est�n ejecut�ndose. 

P�gina de Bienvenida
====================

#. Antes de que ud. pueda comenzar a trabajar con Mapbender ud. debe ingresar un usuario o loguearse para tener acceso a las aplicaciones.

#. La p�gina de bienvenidad provee enlaces a las p�ginas web mas importantes relacionadas con Mapbender. 

#. Ud. puede ingresar o loguearse con el usuario :guilabel:`root` y la contrase�a :guilabel:`root` (Estos son los usuarios y contrase�a por defecto que ud. tendr� una vez instalado Mapbender. Por favor, cambie la contrase�a del usuario root si ud desea ejecutar Mapbender en un ambiente de producci�n. Por favor, no elimine el usuario :guilabel:`root` ya que este usuario tienen acceso a las plantillas de aplicaciones de Mapbender y es usado para las actualizaciones de versiones.
  
  .. image:: ../../images/screenshots/800x600/mapbender_welcome.png
     :scale: 80

Luego de haber ingresado satisfactoriamente ud. ser� dirigido directamente a la :guilabel:`application overview`.



Vista de Aplicaciones
=====================
Despues de ingresar a Mapbender, ud ser� direccionado a :guilabel:`application overview` con una lista de aplicaciones a las cuales ud, est� permisado de acceder.
En Mapbender ud. tiene aplicaciones de plantillas, que ud puede utilizar para crear sus propias aplicaciones.


  .. image:: ../../images/screenshots/800x600/mapbender_application_overview.png
     :scale: 80

Mapbender provee
   * aplicaciones de administraci�n
   * aplicaciones de mapas
   * aplicaciones de contenidos
Las aplicaciones son listadas en :guilabel:`categories`. Luego ud. puede definir sus propias categor�as y agregar sus aplicaciones a las categor�as que ud. desee.


Aplicaciones de Administraci�n
==============================

:guilabel:`Administration applications` le permite por ejemplo, cargar servicios, crear usuarios, crear nuevas aplicaciones. 

Cada :guilabel:`administration application` provee diferentes funcionalidades. Despu�s ud. puede configurar su propia :guilabel:`administration applications` con las funcionalidades que ud. desee proveer.

Luego de la instalaci�n de Mapbender, el usuario :guilabel:`root` tiene acceso a:
   * ADMINISTRATION, ADMINISTRATION_DE - WMS, WFS, application, user/group, handling (nuevo para la version 2.7)
   * admin2_en - WMS, application, user/group handling
   * admin_en_services - se centra en el manejo de servicios WFS y Metadatos y en la configuraci�n de OWS-Proxy.
   * admin1 - plantilla que contiene todos los elementos de administraci�n
   * admin_wms_metadata, admin_wfs_metadata, admin_wmc_metadata - metadata handling 

.. Tip:: Mapbender cuenta con interfaz de administraci�n en ingl�s y alem�n. Actualmente se est� traduciendo al espa�ol. Los lenguajes de las interfaces de administraci�n nos lo indica el sufijo "en" para ingl�s y "de" para alem�n.

La siguiente imagen muestra la interfaz admin2_en. En el lado izquierdo ud. puede ver el men� con las opciones que esta aplicaci�n ofrece.

  .. image:: ../../images/screenshots/800x600/mapbender_admin2_en.png
     :scale: 80

.. Tip:: Para ir "atr�s" o "volver" a la vista principal de aplicaciones utilice el bot�n |HOME| ir a casa.

  .. |HOME| image:: ../../images/screenshots/800x600/mapbender_home.png
     :scale: 100

Aplicaciones de Mapas
=====================
Las aplicaciones de mapas contienen servicios OGC de tipo WMS, uno o mas mapas, botones, un explorador de geodata, un elemento de leyendas, tu propio logo y mas. 

#. Seleccione una aplicaci�n de mapas :guilabel:`by click` desde la :guilabel:`application overview`

#. Conozca Mapbender y las funcionalidades que estas aplicaciones ofrecen.
   
   * seleccione por ejemplo de GUI, gui_digitize
     
  .. image:: ../../images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80

.. tip:: Si su navegador web soporta pesta�as, ud. puede abrir las aplicaciones in pesta�as y facilmente desplazarse entre ellas.

Aplicaciones que contienen WMS
==============================
Ud. puede crear una aplicaci�n de contenidos que contenga su servicio OGC WMS. Tener el servicio WMS contenido o almacenado en una aplicaci�n Mapbender no implica que sea desplegado de forma autom�tica. Con el concepto de "contenedores" ud. puede crear un sofisticado repositorio de servicios web de mapas.

  .. image:: ../../images/screenshots/800x600/mapbender_container.png
     :scale: 60

Crear una aplicaci�n individual
===============================

#. vaya a la aplicaci�n de administraci�n :menuselection:`admin2_en` 

#. seleccione :menuselection:`Application Management --> Create new application`

#. defina un nombre y descripci�n para su aplicaci�n y seleccione el bot�n **new** para crear la aplicaci�n (geoportal)

#. vaya al enlace :menuselection:`Application Management --> Edit application elements` y seleccione la nueva aplicaci�n

#. en la casilla de selecci�n en la parte superior seleccione una aplicaci�n que le guste para usar como plantilla y haga click en el bot�n  **add all elements**. Este proceso tomar� todos los elementos desde la aplicaci�n que ud. seleccion� y los cargar� en SU aplicaci�n nueva.

#. tambi�n podr�a seleccionar un solo elemento desde otra aplicaci�n y cargarlo en la suya nueva. Seleccione el elemento de forma individual activando el ovalo del elemento y haciendo click en bot�n **save** para salvar este elemento nuevo en su aplicaci�n.

#. su aplicaci�n est� configurada. Ahora necesita un WMS que se muestre en su aplicaci�n. Esto se describe en la secci�n de Gesti�n de WMS: **WMS Management**.


Copiar o renombrar una aplicaci�n
=================================
Tambi�n puede crear una nueva aplicaci�n mediante la copia de una aplicaci�n existente. Para ello, vaya a :menuselection:`Application Management --> Rename/copy application`, seleccione la aplicaci�n que desea copiar y defina un nombre para la nueva aplicaci�n. Esta funcionalidad no s�lo copia la aplicaci�n, tambi�n copia los servicios de la aplicaci�n original y los usuarios / grupos (opcional). Esto significa que la nueva aplicaci�n ya tiene servicios de mapas y que los respectivos usuarios / grupos tienen acceso a la nueva aplicaci�n producida a partir de la copia de una existente.

Eliminar una aplicaci�n
=======================
Puede eliminar una aplicaci�n con :menuselection:`Application Management --> Delete application`. S�lo la aplicaci�n es eliminada, no los servicios que formaban parte de ella (p.e WMS/WFS). No est� permitido eliminar aplicaciones que tambi�n pertenecen a otros usuarios.

Exportar una aplicaci�n
=======================
Puede exportar una aplicaci�n usando un script SQL con :menuselection:`Application Management --> Export application (SQL)`. El SQL contiene todas las definiciones de los elementos de la aplicaci�n y se pueden importar en otra instalaci�n Mapbender (en otro servidor).

.. tip:: La exportaci�n de una aplicaci�n de geoportal en Mapbender con SQL no conlleva la exportaci�n de la informaci�n de los servicios ni la informaci�n sobre el usuarios/grupos que contiene la aplicaci�n de origen.


**************
Gesti�n de WMS 
**************

Cargando un Web Map Services
============================
Ud. puede cargar servicios OGC Web Map Services (WMS) a su aplicaci�n.

Un WMS devuelve un archivo XML cuando se solicita el documento getCapabilities. Esta informaci�n es analizada por Mapbender y Mapbender obtiene toda la informaci�n necesaria sobre el servicio de este archivo XML

.. tip:: Ud. podr�a inicialmente verificar el documento de capacidades o Capabilities del servicio WMS en su navegador web antes de tratar de cargarlo con Mapbender


#. Vaya a :guilabel:`admin2_en` y seleccione :menuselection:`WMS Management --> Load WMS`. Seleccione la aplicaci�n la cual contendr� el WMS. Escriba el enlace a la URL del WMS getCapabilities en el campo de texto y seleccione cargar **Load**.

#. Aqui tiene algunos ejemplos de WMS los cuales puede cargar en su aplicaci�n:

Catastro de Espa�a

http://ovc.catastro.meh.es/Cartografia/WMS/ServidorWMS.aspx?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Geoportal Barcelona (Geoportalbcn - el enlace hace referencia a un repositorio de servicios)

http://www.bcn.cat/geoportal/es/geoserveis.html

Demis World Map 

http://www2.demis.nl/wms/wms.asp?wms=WorldMap&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Bird Studies Canada 

http://www.bsc-eoc.org/cgi-bin/bsc_ows.asp?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS

Germany demo 

http://wms.wheregroup.com/cgi-bin/mapserv?map=/data/umn/germany/germany.map&VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS 

WhereGroup OSM WMS 

http://osm.wheregroup.com/cgi-bin/osm_basic.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.1.1
 
.. image::../../images/screenshots/800x600/mapbender_admin2_en.png
  :scale: 80

Ud. puede cargas mas de un WMS en una aplicaci�n o geoportal. Seleccione *WMS application settings* para cambiar el orden de carga de los WMS o remover un WMS de su aplicaci�n. 

El WMS con el �ndice 0 define el valor por defecto del sistema de referencia y los valores l�mites del extendido del mapa.

.. tip:: Cree una aplicaci�n contenedora de servicios y cargue todos los WMS una sola vez a esta aplicaci�n contenedora. Usted puede transferir el WMS desde esta aplicaci�n para otras aplicaciones. Al actualizar un servicio WMS los posibles cambios aparecer�n en todas las aplicaciones que contienen ese servicio WMS. Usted puede copiar f�cilmente un WMS de una a otra aplicaci�n con la entrada del men� * Link WMS de la aplicaci�n *

Configurar un WMS
=================
Despu�s de cargar un servicio WMS ud. puede configurarlo para su aplicaci�n espec�fica. Tal vez usted no desea servir todas las capas o desea cambiar el orden o t�tulos de la capa o desactivar la funci�n de "informaci�n" o cambiar las escalas de visualizaci�n para una capa.

.. image:: ../../images/screenshots/800x600/mapbender_wms_application_settings.png
  :scale: 80

* on/off - activar/desactivar una capa para esta aplicaci�n o geoportal
* sel - hacer elegible en el explorador de datos geogr�ficos
* sel_default - la capa es activada por defecto cuando la aplicaci�n inicia
* info / info default - la capa provee respuesta a solicitudes de informaci�n de los elementos o fen�menos, info default activa por defecto esta funcionalidad para una capa
* minscale / maxscale - define el rango de escalas dentro de los cuales la capa ser� desplegada; valor cero (0) significa que tiene limitaciones
* style - si un servicio WMS provee mas de un estilo ud. puede seleccionar uno de los diferentes estilos prove�dos como "estilo por defecto"
* prio - define el orden en el cual las capas ser�n dibujadas o cargadas
* setWFS - conecta una capa de un servicio WMS a la configuraci�n de tipos de fen�menos de la misma capa en un servicio WFS (ud. podr� aprender mas sobre esta funcionalidad luego)


***********************
Configure su aplicaci�n
***********************
Ahora usted deber�a tener una idea de lo f�cil que es cambiar una aplicaci�n o personalizar un geoportal en Mapbender sin cambios en el c�digo.

Cuando se selecciona un elemento, por ejemplo **mapframe1** haciendo click en el �valo, puede ver que el elemento tiene una gran cantidad de atributos. Estos atributos son atributos HTML. Al definir un elemento en Mapbender ud. define un elemento HTML. Al iniciarse la aplicaci�n o geoportal Mapbender crear� una p�gina HTML con todos los elementos definidos previamente.

	* id - nombre �nico para el elemento
	* on/off - activar/desactivar un elemento
	* title - nombre el cual ser� desplegado como pesta�a o referencia
	* HTML-TAG/CLOSE-TAG - tipo de elemento HTML a crear, por ejemplo div, img
	* top, left - define la posici�n del elemento (para dise�os est�ticos)
	* width/height - define el tama�o del elemento

Algunos elementos tienen variables las cuales le permiten al usuario configurar los par�metros de ese elemento. Las variables de los elementos pueden ser de tipo JavaScript, PHP, referencias a archivos CSS o definiciones de texto CSS.

Ejemplos para variables en elementos:

* el elemento copyright tiene una variable de elemento para establecer el texto de derechos de autor
* el elemento de informaci�n general (mapa general) tiene un elemento variable para definir los WMS se utiliza para el mapa general 
* el elemento treeGDE (explorador de datos geogr�ficos) tiene variables para definir el estilo del explorador de datos geogr�ficos

Int�ntelo ud. mismo
===================
* cambie el tama�o del elemento mapframe (elemento mapframe1)
* cambie la imagen del logo - seleccione el logo de foss4g - como imagen (elemento logo)
* defina el color de fondo (elemento body elemento-variable css_class_bg)
* mueva sus botones (cambie los valores de izquierda y superior (left and top) de sus elementos a otra posici�n en pixeles)
* change the copyright text

****************************
Gesti�n de Usuarios y Grupos
****************************
Acceder a Mapbender siempre requiere autenticaci�n. Por lo tanto se requiere de un usuario que tiene permisos para acceder a una o un conjunto de aplicaciones y los servicios (WMS, WFS), que se asignan a estas aplicaciones.

No hay diferencias inherente entre los roles como :guilabel:`guest`, :guilabel:`operator` o :guilabel:`administrator`. El :guilabel:`role` de un usuario depende de la funcionalidad y los servicios a los que el usuario tiene acceso a trav�s de sus aplicaciones.


Crear un usuario
================

#. Para crear un usuario vaya a :guilabel:`admin2_en` y seleccione :menuselection:`User Management --> Create and edit user`

#. Seleccione un nombre y una contrase�a (name/password) para su usuario. 


.. image:: ../../images/screenshots/800x600/mapbender_create_user.png
     :scale: 80 


Crear un grupo
==============
#. Para crear un grupo vamos a :menuselection:`User Management --> Create and edit group`. Defina un nombre y una descripci�n para su grupo.


Asignar aplicaciones a usuarios/grupos
======================================

#. Asigne un usuario a un grupo mediante :menuselection:`User Management --> Add one user to several groups` o con el enlace :menuselection:`User Management --> Add several users to one group`

#. Asigne una aplicaci�n a un usuario mediante :menuselection:`User Management --> Allow one user to access several applications`

#. Asigne una aplicaci�n a un grupo con :menuselection:`User Management --> Allow one group to access several applications`

.. tip:: Si desea conceder a un usuario acceso de escritura a una aplicaci�n tiene que utilizar :menuselection:`User Management --> Assign to edit an application to a user`.

#. Cierre la sesi�n de Mapbender con el bot�n |LOGOUT|

#. Iniciar sesi�n como el nuevo usuario

#. �Qu� sucede cuando el usuario tiene acceso a una o m�s de una aplicaci�n?

  .. |LOGOUT| image:: ../../images/screenshots/800x600/mapbender_logout.png
     :scale: 100

************************
Gesti�n de Servicios WFS
************************
Mapbender es cliente de servicios OGC Web Feature Service WFS 1.0.0 y 1.1.0. Los servicios OGC WFS pueden ser usados en las aplicaciones y/o geoportal Mapbender para diferentes funcionalidades:

* b�squeda atributiva
* b�squeda espacial
* digitalizaci�n o vectorizaci�n
* listar informaci�n
* generaci�n de informaci�n sobre herramientas
* descarga de data

Para usar un servicio WFS ud. debe cargar el servicio WFS en Mapbender y generar configuraciones de tipo de fen�nemos.

Luego ud. tiene que permitir el acceso de su nueva configuraci�n de tipo de fen�menos (WFS) a una aplicaci�n antes de poder usarlo.

Si desea crear una aplicaci�n con la opci�n de digitalizaci�n o vectorizaci�n de WFS, necesitar� de un servicio WFS que soporte transacciones (WFS-T). Por ejemplo, puede utilizar software de servidores de mapas tales como GeoServer o Deegree para establecer un WFS-T.

Cargando un Web Feature Services
================================
El m�dulo para la configuraci�n de servicios WFS est� integrado en la aplicaci�n de administraci�n **admin_en_services**.

#. Vaya a *admin_en_services* y seleccione *WFS Management --> Load WFS*. Seleccione una aplicaci�n de la lista de aplicaciones. Escriba el enlace URL para obtener el documento WFS getCapabilities en el casilla de texto y seleccione con click **Load**.

.. tip:: Ud. podr�a inicialmente verificar el documento de capacidades o Capabilities del servicio WFS en su navegador web antes de tratar de cargarlo con Mapbender.

Demo WFS

http://wms.wheregroup.com/geoserver/wfs?REQUEST=getCapabilities&VERSION=1.0.0&SERVICE=WFS


.. image:: ../../images/screenshots/800x600/mapbender_loadWFS.png
     :scale: 80 

Crear una configuraci�n de tipo de fen�menos
============================================
El siguiente paso es establecer una configuraci�n para un tipo de fen�menos. Despu�s de la configuraci�n y la autorizaci�n de acceso a una aplicaci�n, la configuraci�n se puede utilizar en sus aplicaciones.

.. image:: ../../images/screenshots/800x600/mapbender_configure_WFS_featureType.png
     :scale: 80 

**Configuraci�n**

#. primero ud. tiene que seleccionar un servicios WFS desde el recuadro de selcci�n *Select WFS*. Todos los tipos de fen�menos de este WFS ser�n listados
#. seleccione el tipo de fen�meno que ud. quiere configurar
#. despu�s de la selecci�n del tipo de fen�meno un par de campos aparecer�n (campos de configuraci�n, campos de atributos)
#. defina un resumen descriptivo y una etiqueta para su b�squeda
#. defina el texto que aparecer� en el bot�n de b�squeda (p.e. ok o buscar)
#. en las casillas de estilo y de estilo-de-resultados ud. puede definirlo con uso de texto-ccs
#. defina una �rea (buffer) la cual ser� usada cuando se haga un acercamiento sobre los objetos que resulten de la b�squeda
#. seleccione el campo o columna de la geometria (espacial)
#. search / pos - define las columnas a ofrecer para realizar la b�squeda y el orden (pos de position) en el cual ser�n listados
#. minimum_input (**Search**) - define la entrada m�nima de datos para un campo
#. label - define una etiqueta para la columna de b�squeda
#. show - define las columnas las cuales ud. desea mostrar en la lista de resultados y define la posici�n de �stas
#. show_detail - define las columnas las cuales ser�n desplegar�n informaci�n detallada en una ventana que provee informaci�n por cada objeto en individual
#. mandatory (**digitizing**) - la columna o campo ha de ser llenado y nos puede dejarse vac�o
#. edit (**digitizing**) - define cuales columnas o campos ud, desde ofrecer para ser digitalizados o vectorizados
#. html - ofrece cuadros de selecci�n (selectbox), b�squeda por fechas, casillas de verificaci�n (checkbox), �reas de texto o de carga de archivos por medio de una campo de captura sencillo
#. auth - aqu� ud puede definir autorizaciones para que los usuarios tengan acceso dependiendo de los objetos y fen�menos
#. operator - (**Search**) - define cual operador ser� usado para la b�squeda
#. helptext - ++define un texto de ayuda para cada campo.
#. category - ud. puede definir categor�as. Los atributos ser�n asignados a esta categor�a y ser�n desplegados en forma de pesta�a con el nombre de la categor�a.
#. **save** guarda sus preferencias
#. su configuraci�n tendr� un indentificador de configuraci�n o "configuration id"


.. image:: ../../images/screenshots/800x600/mapbender_configure_WFS_featureType_attribute_table.png
     :scale: 80 

Asignar una configuraci�n de tipos de fen�menos a una aplicaci�n
================================================================
Su nueva configuraci�n ha de ser asignada a una o mas aplicaciones. Esto se hace en *WFS configuration -> Assign WFS conf to application*.

#. Seleccione su servicio WFS
#. Seleccione una aplicaci�n
#. Mueva su configuraci�n para el *GUI configuration list* ubicado a la derecha

.. image:: ../../images/screenshots/800x600/mapbender_set_featureType_access.png
     :scale: 80 


Establecer una b�squeda en un WFS
=================================
Para hacer compatible una configuraci�n de tipos de fen�menos en una aplicaci�n, vaya a *admin_en_services -> Edit application elements* seleccione su aplicaci�n y vaya hasta el elemento *gazetteerWFS*. Seleccione el elemento para editarlo haciendo click sobre el texto o nombre del elemento, y ver� en una nueva ventana que el elemento *gazetteerWFS* tiene una variable *wfsConfIdString*. Aqu� ud. puede listar los identificadores (ids) de sus servicios WFS (separados por coma). En el orden en que se listen ser�n desplegados los resultados de las b�squedas en la aplicaci�n.

.. image:: ../../images/screenshots/800x600/mapbender_wfsConfIdString.png
     :scale: 80 

Echa un vistazo de c�mo la b�squeda podr�a aparecer en una aplicaci�n. En este ejemplo hay un recuadro de b�squeda de la izquierda, donde puede buscarse un "Usuario Mapbender". Usted puede realizar una b�squeda espacial y definir una regi�n para buscar o puede hacer una consulta alfanum�rica. Los resultados de la b�squeda se muestran en una tabla de resultados. Al hacer click en uno de los elementos listados en un resultado, Mapbender hace un acercamiento a la ubicaci�n y la informaci�n detallada del objeto es desplegada.

.. image:: ../../images/screenshots/800x600/mapbender_WFS_search.png
     :scale: 100
	 
Establecer funcionalidades de digitalizaci�n a un WFS
=====================================================
La forma m�s sencilla de disponer de una aplicaci�n que admita la digitalizaci�n o vectorizaci�n sobre un servicio WFS es copiar la plantilla gui_digitize. Ahora s�lo tiene que conectar una capa del servicio WMS con la configuraci�n tipo de fen�menos. Esto se hace en *WMS application settings*  con el bot�n *set WFS* en la lista de capas. Pulse el bot�n y seleccione el identificador de configuraci�n suyo.

.. tip:: Aseg�rese de que la capa WMS que est� conectado con la configuraci�n de tipos de fen�menos del servicio WFS soporta la opci�n de solicitud de informaci�n por elemento. As� es como Mapbender decide si se env�a una solicitud getFeature CMA o no

Ahora usted puede buscar con la b�squeda espacial que est� del lado derecho, la existencia de objetos los cuales son mostrados en un recuadro de resultados. Los objetos pueden ser actualizados (mover objeto, agregar punto, modificar los atributos, cortar una l�nea (split), continuar una l�nea, fusionar pol�gonos (merge)...). Tambi�n puede crear nuevos objetos.

.. image:: ../../images/screenshots/800x600/mapbender_gui_digitize.png
     :scale: 80 

Cosas por intentar
==================

Estos son algunos cambios adicionales para que los intentes:

#. Intenta cargar algunos WMS en tu aplicaci�n. Trata de configurar tus WMS con :menuselection:`Configure WMS access --> WMS application settings`.

#. Intenta crear una aplicaci�n individual - cambia de color de fondo, mueve los botones, cambia el tama�o del mapa (elemento mapframe1). :menuselection:`Application Management --> Edit application elements`.


Que sigue ahora?
================

Estos son s�los los primeros pasos en el camino de utilizar Mapbender. Hay much�simas mas funcionalidades que puedes probar.

Proyecto Mapbender:

  http://www.mapbender.org/

Encontrar�s tutoriales en:

  http://www.mapbender.org/Tutorials

Prueba el tutorial en ingl�s ac�:

  http://www.mapbender.org/Mapbender_Tutorial_en

Conoce mas de Mapbender en:
	
	http://projects.mapbender.osgeo.org

Participa del proyecto:

	http://www.mapbender.org/Community
