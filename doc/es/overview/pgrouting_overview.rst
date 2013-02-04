:Author: Daniel Kastl
:Reviewer: Cameron Shorter, LISAsoft
:Translator: Mauricio Miranda
:Translator: Roberto Antol�n
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
  :scale: 100 %
  :alt: pgRouting logo
  :align: right
  :target: http://www.pgrouting.org/

pgRouting
================================================================================

Herramientas SIG
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

pgRouting extiende la base de datos :doc:`PostGIS <postgis_overview>`/`PostgreSQL <http://www.postgresql.org>`_ para proveer funcionalidades de ruteo espacial.

Las ventajas del ruteo en base de datos son:

* Los datos y atributos pueden ser modificados desde varios clientes, como :doc:`Quantum GIS <qgis_overview>` y :doc:`uDig <udig_overview>` a trav�s de JDBC, ODBC, o directamente usando Pl/pgSQL. Los clientes pueden ser PCs o dispositivos m�viles.
* Los cambios pueden ser reflejados instant�neamente a trav�s del motor de ruteo. No hay necesidad de hacer c�lculos previos.
* El par�metro de "costo" puede ser calculado din�micamente a trav�s de SQL y su valor puede provenir de m�ltiples campos y tablas.

.. image:: ../../images/screenshots/800x600/pgrouting.png
  :scale: 60 %
  :alt: pgRouting query in pgAdminIII
  :align: right

Funcionalidades principales
--------------------------------------------------------------------------------

pgRouting provee funciones para:

* Camino m�nimo (Dijkstra): algoritmo de ruteo sin heur�stica
* Camino m�nimo (A-Star): routeo para conjunto de datos grandes (con heur�stica)
* Camino m�nimo (Shooting-Star): ruteo con restricciones de giro (con heur�stica)
* El problema del viajante (TSP: Traveling Salesperon Problem) 
* C�lculo de ruta (Isol�neas)

.. Implemented Standards
   ---------------------

.. * OGC standards compliant

Detalles
--------------------------------------------------------------------------------

**Sitio Web:** http://www.pgrouting.org

**Licencia:** GNU General Public License (GPL) version 2

**Versi�n del Software:** 1.05

**Plataformas soportadas:** Linux, Windows, Mac

**Soporte a lenguajes de programaci�n:** SQL

**Soporte:** http://www.pgrouting.org

Gu�a de Inicio R�pido
--------------------------------------------------------------------------------

* :doc:`Gu�a de inicio r�pido <../quickstart/pgrouting_quickstart>`


