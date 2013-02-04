:Author: OSGeo-Live
:Author: Tom Kralidis, Angelos Tzotsos
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Samuel Mesa
:Translator: Roberto Antol�n
:Version: osgeo-live6.5
:License: Creative Commons

.. image:: ../../images/project_logos/logo-pycsw.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://pycsw.org/


pycsw
===============================================================================

Cat�logo de metadatos
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pycsw permite al usuario publicar cat�logos de metadatos en la web, usando
interfaces y formatos basado en est�ndares, el modo que pueden ser consultados y
actualizados por clientes de cat�logos. pycsw es f�cil de configurar en un
servidor web Apache y puede acceder a metadatos almacenados como archivos XML en
una base de datos.

Metadatos son 'datos sobre los datos', recogiendo informaci�n como fecha de
creaci�n, autor, t�tulo, �rea de inter�s, etc., y est� normalmente codificado
como ficheros XML, siguiendo est�ndares internacionales como ISO 19115, ISO
19139 y FGDC CSDGM.

pycsw una implementaci�n en `python`_ del :doc:`Est�ndar de servicio de
cat�logos web (CSW) de OGC <../standards/csw_overview>`. El proyecto est�
certificado como que `cumple con los est�ndares OGC`_, y es una `referencia de
implementaci�n OGC`_. El est�ndar CSW define interfaces comunes para encontrar,
explorar y consultar metadatos sobre datos espaciales, servicios web y recursos
relacionados.

pycsw es software de c�digo abierto, liberado bajo la licencia MIT, y es ejecutable
en las mayores plataformas (Windows, Linux, Mac OS X).

.. image:: ../../images/screenshots/1024x768/pycsw_overview.jpg
  :scale: 50 %
  :alt: project logo
  :align: right

Caracter�sticas principales
--------------------------------------------------------------------------------

* cumple enteramente con OGC CSW 2.0.2
* pasa completamente las herramientas de prueba OGC CITE CSW (103/103)
* implementa los Servicios de Descubrimiento INSPIRE 3.0
* implementa el Perfil de Aplicaci�n de Metadatos ISO 1.0.0
* implementa el Perfil de Aplicaci�n FGDC CSDGM para CSW 2.0
* implementa el protocolo de b�squeda via URL (SRU) B�squeda/Recuperaci�n 
* implementa OpenSearch
* soporta modelos de metadatos ISO, Dublin Core, DIF, FGDC
* utilizaci�n de CGI o WSGI
* configuraci�n simple
* capacidades transaccionales (CSW-T)
* configuraci�n flexible de repositorios
* conectividad con GeoNode
* concectividad con `Open Data Catalog`
* b�squeda distribuida de cat�logos institucionales
* validaci�n de esquemas XML en tiempo real
* arquitectura de extensiones (`plugis`) para para perfiles extensibles
* muy ligero (Python + CGI)

Est�ndares implementados
------------------------

Est�ndares OGC:

* CSW 	2.0.2
* Filter 	1.1.0
* OWS Common 	1.0.0
* GML 	3.1.1

Est�ndares de metadatos:

* Dublin Core 	1.1
* SOAP 	1.2
* ISO 19115 	2003
* ISO 19139 	2007
* ISO 19119 	2005
* NASA DIF 	9.7
* FGDC CSDGM 	1998
* SRU   1.1
* A9 OpenSearch 1.1

Detalles 
--------

**Sitio web:** http://pycsw.org

**Licencia:** `MIT`_

**Versi�n del software:** 1.4.0

**Plataformas soportadas:** Windows, Linux, Mac

**Interfaces API:** Python

**Soporte:** http://pycsw.org/docs/support.html

.. _`Python`: http://www.python.org/
.. _`MIT`: http://pycsw.org/docs/license.html#license
.. _`OGC Compliant`: http://www.opengeospatial.org/resource/products/details/?pid=1104
.. _`OGC Reference Implementation`: http://demo.pycsw.org/


Gu�a r�pida
------------------------------------------------------------------------------

* :doc:`Gu�a de inicio r�pido <../quickstart/pycsw_quickstart>`

