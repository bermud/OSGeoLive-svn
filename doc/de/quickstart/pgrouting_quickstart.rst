:Author: Daniel Kastl
:Version: osgeo-live5.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo-pgRouting.png
	:scale: 100 %
	:alt: pgRouting logo
	:align: right
	:target: http://www.pgrouting.org

********************************************************************************
pgRouting Quickstart
********************************************************************************

pgRouting erweitert eine :doc:`PostGIS <../overview/postgis_overview>`/` PostgreSQL <http://www.postgresql.org>`_ Geo-Datenbank um Funktionen für "Kürzeste-Wege" Berechnung (Routing).

Diese Quickstart Anleitung beschreibt, wie man eine Routingdatenbank öffnet und darauf einfache "Kürzeste-Wege" Berechnungen von der Kommandozeile aus durchführt.


pgRouting Starten
================================================================================

* Starte ein :menuselection:`Applications --> Accessories --> Terminal` Fenster und stelle eine Verbindung mit der ``pgrouting`` Datenbank her:

.. code-block:: bash

	psql -U user pgrouting

* Gib :command:`\\d` ein, um alle vorhandenen Tabellen aufzulisten:

.. code-block:: sql

	                List of relations
	 Schema |        Name         |   Type   | Owner 
	--------+---------------------+----------+-------
	 public | classes             | table    | user
	 public | geography_columns   | view     | user
	 public | geometry_columns    | view     | user
	 public | nodes               | table    | user
	 public | raster_columns      | view     | user
	 public | raster_overviews    | view     | user
	 public | relation_ways       | table    | user
	 public | relations           | table    | user
	 public | spatial_ref_sys     | table    | user
	 public | types               | table    | user
	 public | vertices_tmp        | table    | user
	 public | vertices_tmp_id_seq | sequence | user
	 public | way_tag             | table    | user
	 public | ways                | table    | user
	(14 Zeilen)


* Führe die "Dijkstra-Shortest-Path" Funktion aus:

.. code-block:: sql

	SELECT seq, id1 AS node, id2 AS edge, cost 
		FROM pgr_dijkstra('
			SELECT gid::int as id, source::int, target::int, 
				length::float8 as cost FROM ways', 
			100, 600, false, false
		);


.. code-block:: sql

	 seq | node | edge  |        cost         
	-----+------+-------+---------------------
	   0 |  100 |   115 |  0.0605959823538948
	   1 |   99 |  2972 |   0.197600739218643
	   2 | 2151 |  3783 |  0.0139212050887606
	 ... |  ... |   ... |                 ...
	  52 |  599 |   732 |  0.0390125147117973
	  53 |  600 |    -1 |                   0
    (54 Zeilen)


* Um die Route als Linie anzuzeigen, kann man das Ergebnis der Abfrage mit der ursprünglichen Tabelle verknüpfen:

.. code-block:: sql

	SELECT seq, id2 AS edge, rpad(b.the_geom,60,' ') AS "the_geom (truncated)" 
		FROM pgr_dijkstra('
			SELECT gid::int as id, source::int, target::int, 
				length::float8 as cost FROM ways', 
			100, 600, false, false
		) a INNER JOIN ways b ON (a.id2 = b.gid) ORDER BY seq;


.. code-block:: sql
	
	 seq | edge  |                     the_geom (truncated)                     
	-----+-------+--------------------------------------------------------------
	   0 |   115 | 0102000020E610000002000000012D0208C4B0F2BFBD2DA237267A4A40E5
	   1 |  2972 | 0102000020E610000002000000622B0DA1EFB3F2BF65236B685E7A4A4001
	   2 |  3783 | 0102000020E610000002000000BD4571D8C7B4F2BFB2648EE55D7A4A4062
	 ... |   ... |                                                          ...
	  52 |   732 | 0102000020E6100000020000006B48DC63E903F3BF84CCDFCECF7B4A40E9
	(53 Zeilen)


* Mit dem Kommando :command:`\\q` verlässt man die PostgreSQL Shell wieder.


Wie geht es weiter?
================================================================================

* **pgRouting Webseite** - Besuche die Projektseite unter http://www.pgrouting.org, um mehr über pgRouting zu erfahren.

* **Workshop auf DVD** - Auf dieser LiveDVD enthalten ist der FOSS4G 2011 pgRouting Workshop `"FOSS4G routing with pgRouting tools, OpenStreetMap road data and GeoExt"`, zu finden unter: :file:`/usr/share/pgrouting/workshop/`

.. note::

	Um mit der aktuellen Version des Workshops zu arbeiten, öffne ein Terminal Fenster und führe ``sudo apt-get update && apt-get upgrade pgrouting-workshop`` aus.

