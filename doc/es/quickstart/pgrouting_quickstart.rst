:Author: Daniel Kastl
:Version: osgeo-live4.0
:License: Creative Commons

.. _pgrouting-quickstart:
 
.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************
Gu�a de inicio r�pido pgRouting 
********************

pgRouting es una extensi�n de `PostGIS <http://www.postgis.org>`_ la cual a�ade funcionalidades de ruteo a `PostGIS <http://www.postgis.org>`_/`PostgreSQL <http://www.postgresql.org>`_.

Esta gu�a de inicio r�pido describe c�mo abrir una base de datos desde la l�nea de comandos y ejecutar una consulta de camino m�s corto con unos datos de prueba.


Ejecuci�n de pgRouting
=================

* Abra un ventana de terminal :menuselection:`Aplicaciones --> Accesorios --> Ventana de Terminal` y con�ctese a la base de datos de ``pgrouting`` :

.. code-block:: bash

	psql -U user pgrouting

* Escriba :`\\d` para mostrar todas las tablas disponibles:

.. code-block:: sql

			      List of relations
	 Schema |        Name         |   Type   |  Owner   
	--------+---------------------+----------+----------
	 public | geography_columns   | view     | postgres
	 public | geometry_columns    | table    | postgres
	 public | spatial_ref_sys     | table    | postgres
	 public | vertices_tmp        | table    | postgres
	 public | vertices_tmp_id_seq | sequence | postgres
	 public | ways                | table    | postgres
	(6 rows)

* Ejecutar la funci�n ruta m�s corta usando algoritmo de Dijkstra:

.. code-block:: sql

	SELECT * FROM shortest_path('
			SELECT gid as id, 
				 source::integer, 
				 target::integer, 
				 length::double precision as cost 
				FROM ways', 
			605, 359, false, false); 

.. code-block:: sql

     vertex_id | edge_id |        cost         
    -----------+---------+---------------------
    	   605 |    5575 |  0.0717467247513547
    	  1679 |    2095 |   0.148344716070272
    	   588 |    2094 |  0.0611856933258344
    	   ... |     ... |  ...
    	   359 |      -1 |                   0
    (82 rows)

* Para obtener el resultado del ruteo en un formato diferente, pruebe la siguiente funci�n:

.. code-block:: sql

	SELECT gid, AsText(the_geom) AS the_geom 
		FROM dijkstra_sp('ways', 605, 359);
	
.. code-block:: sql
	
      gid   |                              the_geom      
    --------+---------------------------------------------------------------
    	168 | MULTILINESTRING((2.1633077 41.3802886,2.1637094 41.3803008))
    	169 | MULTILINESTRING((2.1637094 41.3803008,2.1638796 41.3803093))
    	170 | MULTILINESTRING((2.1638796 41.3803093,2.1640527 41.3803265))
    	... | ...
       5575 | MULTILINESTRING((2.1436976 41.3897581,2.143876 41.3903893))
    (81 rows)

* Con el comando:`\\q` abandonara la consola de PostgreSQL.


�Y ahora qu�?
==========

* **Sitio web de pgRouting** - Visite el sitio web del proyecto http://www.pgrouting.org para aprender m�s sobre pgRouting.

* **Taller en DVD** - Incluido en el LiveDVD del FOSS4G 2010 pgRouting workshop `"FOSS4G ruteo con herramientas de pgRouting, OpenStreetMap datos de v�as y GeoEx"`, disponibles en: :file:`/usr/share/pgrouting/workshop/`

.. Nota::

	Para actualizar a la �ltima versi�n del tutorial, abra una ventana de terminal, a continuaci�n, ejecute ``sudo apt-get update && apt-get upgrade pgrouting-workshop``

