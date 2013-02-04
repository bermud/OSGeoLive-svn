.. Consejo para redactar:
  Los "consejos para redactar" describen el tipo de contenido que deber�a aparecer en la secci�n que aparece a continuaci�n.
  El documento postgis_overview.rst se usa como ejemplo de referencia para otros overviews.
  En todos los otros overviews se deber�an eliminar los "consejos para redactar" para que esos documentos
  sean m�s f�ciles de traducir.

.. Consejo para redactar:
   Metadatos sobre este documento

:Author: OSGeo Live
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Luc�a Sanjaime
:Translator: Roberto Antol�n
:Version: osgeo-live6.5
:Licence: Creative Commons


.. Consejo para redactar:
   El siguiente elemento es un ancla HTML para enlazar con esta p�gina 

.. Consejo para redactar:
   Los logos del proyecto est�n almacenados en:
   https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
   y se puede acceder a ellos en:
   ../../images/project_logos/<filename>

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.refractions.net/

.. Consejo para redactar:
   Incluya un logo de OSGeo si el proyecto es un proyecto de OSGeo o si est� en incubaci�n.
   Hay una lista de los proyectos de OSGeo en esta p�gina: http://www.osgeo.org/
   .. image:: images/logos/OSGeo_incubation.png
   .. image:: images/logos/OSGeo_project.png

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

.. Consejo para redactar: Nombre de la aplicaci�n

PostGIS
================================================================================

.. Consejo para redactar:
   Descripci�n de la categor�a de la aplicaci�n:

Base de datos Espacial
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Consejo para redactar:
   Se deben tratar cuestiones de los usuarios como "�Qu� hace la aplicaci�n?",
   "�Cu�ndo deber�a usarla?", "�Por qu� deber�a usar �sta y no otra aplicaci�n?",
   "�Qu� grado de madurez y de uso tiene la aplicaci�n?".
   No se debe mencionar el tema de la licencia ni del software libre en esta secci�n.
   El p�blico objetivo son los profesionales SIG o los estudiantes que se inician en el software libre.
   * La primera oraci�n deber�a explicar la aplicaci�n.
   * Como generalmente el lector no estar� familiarizado con el �mbito de uso de la aplicaci�n, 
     las siguientes una o dos l�neas deber�an explicar su �mbito de uso. Ej. en el caso de GeoKettle,
     las siguientes l�neas deber�an explicar en qu� consiste la inteligencia de negocios geoespacial.
   * Los p�rrafos restantes (1 o 2) de esta secci�n del overview deber�an proporcionar
     una descripci�n m�s amplia y las ventajas desde la perspectiva del usuario.

PostGIS ofrece soporte espacial a la popular base de datos objeto-relacional PostgreSQL. Puede ser usada como base de datos subyacente para sistemas de informaci�n geogr�fica (SIG) y aplicaciones de cartograf�a web de la misma forma que Oracle Spatial hace con la base de datos Oracle.

PostGIS es estable, r�pido, compatible con est�ndares, con cientos de funciones espaciales y actualmente es la base de datos espacial de c�digo abierto m�s ampliamente utilizada. Diversas organizaciones de todo el mundo usan PostGIS, incluyendo agencias gubernamentales de riesgos adversos y organizaciones que almacenan terabytes de datos y sirven millones de peticiones web al d�a.

La administraci�n de la base de datos es posible a trav�s de pgAdmin y
phpPgAdmin, entre otros. Es posible importar y exportar datos mediante
herramientas en l�nea de comandos (shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis) o
a trav�s de clientes SIG de escritorio o web. Adem�s, estos clientes pueden
crear visualizar y manipular tablas espaciales PostGIS.

.. Consejo para redactar:
   Incluye una imagen de la aplicaci�n, generalmente una captura de pantalla 
   o un collage de capturas de pantalla.
   Guarda la imagen en image/<application>_<name>.png . Ej.: udig_main_page.png
   Las capturas de pantalla se deber�an realizar a partir de una visualizaci�n de 1024x768.
   No debe aparecer el fondo de escritorio porque cambia con cada versi�n
   y se podr� datar.

.. image:: ../../images/screenshots/800x600/pgadmin.png
  :scale: 55 %
  :alt: project logo
  :align: right

Caracter�sticas principales
--------------------------------------------------------------------------------

* Cientos de funciones espaciales
  
  * Buffers, uniones, overlays, distancia, etc.

* Integridad transaccional ACID 
* �ndice espacial R-Tree
* Soporte multiusuario
* Bloqueo a nivel de fila
* Replicaci�n
* Particionado
* Seguridad basada en roles
* Table-spaces, esquemas

Est�ndares implementados
--------------------------------------------------------------------------------

.. Consejo para redactar: Lista los est�ndares OGC o relacionados que est�n soportados.

* Compatible con los est�ndares OGC (SFSQL)

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://postgis.refractions.net/

**Licencia:** GNU General Public License (GPL) version 2

**Versi�n del software:** 2.0

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces del API:** SQL

.. Consejo para redactar:
   Enlace a la p�gina Web que inculye un listado de los detalles de soporte b�sico para la aplicaci�n.
   Este listado deber�a incluir tanto contactos comerciales como de la comunidad.

**Soporte:** http://www.osgeo.org/search_profile


Gu�a de inicio r�pido
--------------------------------------------------------------------------------
    
* :doc:`Gu�a de inicio r�pido <../quickstart/postgis_quickstart.html>`_
