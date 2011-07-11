:Author: Simon Cropper (translated by Georg Sedlmeir, Ruth Sch�nbuchner)
:Version: OSGeo-Live DVD, Version 4.5
:License: Creative Commons - Attribution, Share Alike

.. image:: ../../images/project_logos/logo-gvSIG.png
   :scale: 50 
   :align: right

.. EDITS REQUIRED BY THE LiveDVD TEAM
.. B. Path to the vector and raster data needs to be updated to reflect where they are contained on the Live DVD

****************
gvSIG Quickstart 
****************

Projektbeschreibung
===================

�gvSIG ist ein Geographisches Informationssystem (GIS), das hei�t, eine Desktopanwendung zum Erfassen, Speichern, Bearbeiten, Analysieren und Ver�ffentlichen jeglicher Art r�umlich referenzierter geographischer Informationen und zum L�sen komplexer Fragestellungen in Verwaltung und Planung. gvSIG ist f�r seine benutzerfreundliche Bedienoberfl�che bekannt, die den Zugriff auf die meisten g�ngigen Datenformate, sowohl auf Vektor- als auch auf Rasterbasis, erm�glicht. Es bietet eine breite Auswahl an Werkzeugen f�r die Bearbeitung geographischer Informationen (Abfragewerkzeuge, Layouterstellung, Geoprocessing, Netzwerk, etc.), und ist damit das ideale Werkzeug f�r alle Anwender aus Fachgebieten in denen raumbezogene Daten eine Rolle spielen.
`gvSIG <http://www.gvsig.org/web/projects/gvsig-desktop/description2/view?set_language=en>`_ 2011

Dieses Dokument zeigt wie man...
================================

    * gvSIG �ffnet und eine Ansicht erstellt;
    * Die Projektion f�r die Ansicht festlegt ;
    * Raster- und Vektordaten zu einer Ansicht hinzuf�gt;
    * In einer Ansicht navigiert;
    * Die Anzeige der Ebenen in einem View �ndert;
    * St�dte ausw�hlt die sich in einer bestimmten Region befinden und diese           in eine neue Datei exportiert;
    * Eine Karte mit einem Gitternetz erstellt; und
    * Das aktuelle Projekt speichert oder gvSIG beendet.


gvSIG �ffnen und eine Ansicht erstellen
=======================================

W�hlen Sie gvSIG im entsprechenden Anwendungsmen� oder klicken Sie auf das entsprechende Symbol. Die Anwendung ben�tigt etwa eine Minute um zu starten.

   #. In der Standardeinstellung startet gvSIG mit einem leeren Projekt sowie einer leeren ausgew�hlten Ansicht.
   #. Klicken Sie auf den Button [Neu] um eine Ansicht zu erstellen.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_001.png
   :scale: 55 

Die Projektion f�r die Ansicht festlegen
========================================

�ffnen sie den Dialog Eigenschaften der Ansicht
-----------------------------------------------

   #. W�hlen Sie die neu erstellte Ansicht. In der Standardeinstellung hat sie den Namen Ohne Titel-0 - 0 aber es kann auch Ohne Titel-1 - 1 sein falls sie zuvor bereits eine Ansicht erstellt und wieder gel�scht haben.
   #. Klicken Sie den Button [Eigenschaften] an um den Dialog Eigenschaften Ansicht zu �ffnen
   #. Klicken Sie auf den Button [...] rechts vom Eintrag "Aktuelle Projektion". Damit wird der Dialog **Neues Raumbezugssystem (CRS)** ge�ffnet.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_002.png
   :scale: 55 

Definieren Sie das Raumbezugssystem
-----------------------------------

   #. Verwenden Sie die Dropdownliste f�r "Typ", und w�hlen Sie EPSG.
   #. Geben Sie den EPSG code f�r das Koordinatensystem ein. In diesem Beispiel verwenden wir EPSG=4326, dies ist die WGS84 2D Geographic Projection. Klicken Sie dann auf den Button [Suchen]. Das gesuchte CRS erscheint in der Tabelle unterhalb des Suchfeldes.
   #. W�hlen Sie [OK] um zum Dialog **Eigenschaften Ansicht** zur�ckzukehren.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_003.png
   :scale: 55 

Die Eigenschaften der Ansicht speichern
---------------------------------------

   #. Beachten Sie dass der EPSG Code nun 4326 lautet und dass die Karteneinheiten nun in Grad angegeben sind.
   #. Klicken Sie auf [OK] um zum **Projektverwalter** zur�ckzukehren.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_004.png
   :scale: 55 

�ffnen Sie die Ansicht
----------------------
   
   #. W�hlen Sie die neu erstellte Ansicht aus.
   #. Klicken Sie auf den Buttton [�ffnen] um die Ansicht zu �ffnen.
   #. Das Ansichtsfenster ist in drei Bereiche unterteilt.
   #. Der Abschnitt links oben enth�lt eine List von Vektor-oder Rasterebenen die in der Ansicht verwendet werden (eine Art Inhaltsverzeichnis)
   #. Der linke untere Abschnitt zeigt -f�r Vektordateien- die Position der dargestellen Ansicht innerhalb der Ausdehnung der gesamten Datei
   #. Der rechte Bereich ist der Hauptanzeigebereich in dem Raster- und Vektordaten dargestellt werden.
   #. W�hlen Sie das Symbol �Maxieren� um den ganzen Bildschirm f�r die Darstellung der Ansicht zu nutzen.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_005.png
   :scale: 55 

Die Ansicht - Raster- und Vektordaten hinzuf�gen
================================================

�ffnen Sie den Dialog "Layer hinzuf�gen"
----------------------------------------
   
   #. Klicken Sie auf das Symbol "Layer hinzuf�gen" in der Hauptwerkzeugleiste um den **Layer Hinzuf�gen** Dialog zu �ffnen.
   #. W�hlen Sie [Hinzuf�gen] im Dialog **Layer Hinzuf�gen**. In der Standardeinstellung hei�t der erste Reiter Datei, somit erscheint der Dialog **�ffnen**.
   #. Folgen Sie dem Verzeichnisbaum bis zum Verzeichnis ``/usr/local/share/data/natural earth/HYP_50M_SR_W``


.. image:: ../../images/screenshots/1024x768/gvsig_qs_006.png
   :scale: 55 

Eine Rasterdatei ausw�hlen
--------------------------
   
   #. W�hlen Sie *gvSIG Raster Driver* aus der Dropdownliste. in der Standardeinstellung ist der Treiber f�r Shapefiles selektiert, das Verzeichnis kann deshalb leer erscheinen.
   #. W�hlen Sie ``HYP_50M_SR_W.tif``.
   #. Klicken Sie auf [OK] um zum Dialog **Layer hinzuf�gen** zur�ckzukehren.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_007.png
   :scale: 55 

Vektordateien ausw�hlen
-----------------------
  
   #. Der Dialog **Layer hinzuf�gen** enth�lt nun als Eintrag die Rasterdatei.
   #. Klicken Sie auf den Button [Hinzuf�gen] um einige Vektordateien hinzuzuf�gen. Der Dialog **�ffnen** erscheint.
   #. Navigieren Sie im Verzeichnisbaum eine Ebene nach oben um ins Verzeichnis ``/usr/local/share/data/natural_earth`` zu wechseln.
   #. W�hlen Sie *gvSIG shp driver* aus der Dropdown-Liste.
   #. W�hlen Sie die Shape-Dateien ``10m_admin_1_states_provinces.shp``, 10m_populated_places_simple.shp und ``10m_rivers_lake_centerlines.shp`` aus der Liste. Halten Sie die Contol-Taste gedr�ckt um mehrere Dateien gleichzeitig auszuw�hlen.
   #. Klicken Sie auf den Button [OK] um zum Dialog **Layer hinzuf�gen** zur�ckzukehren.
   #. Klicken Sie auf den Button [OK] im Dialog **Layer hinzuf�gen** um zur�ck zur Ansicht zu gelangen.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_008.png
   :scale: 55 

Die Ansicht- grundlegende Navigation
====================================

In eine Region zoomen
---------------------

Zur�ck in der Hauptansicht sehen sie dass die Vektordateien nun der Rasterdatei �berlagert sind. Die Farben in diesem Screenshot k�nnen sich je nach Benutzereinstllungen von denen auf Ihrem Bildschirm unterscheiden.
       
   #. In der Standardeinstellung ist das Werkzeug Zoom (+) in der Haupt-Werkzeugleiste aktiviert.
   #. Verwenden Sie die Maus um ein Auswahlrechteck um S�dost-Australien zu zeichnen. Klicken Sie dazu in die linke obere Ecke in der die Auswahl beginnen soll, halten Sie die linke Maustaste gedr�ckt und ziehen Sie so die rechte untere Ecke des Rechtecks bis zur entsprechenden Position, um den gew�nschten Bereich auszuw�hlen. Lassen sie dann die linke Maustaste los.
 

.. image:: ../../images/screenshots/1024x768/gvsig_qs_009.png
   :scale: 55 

Feineinstellung der Navigation
------------------------------
   
Die Ansicht �ndert sich automatisch um die Inhalte innerhalb des Auswahl.

   #. Die Breite der Layerliste kann mit der Maus angepasst werden um auch lange Dateinamen anzuzeigen.
   #. Passen sie Darstellung der Ansicht mittels der hervorgehobenen Werkzeuge an, so dass Victoria im Zentrum der Ansicht dargestellt wird.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_010.png
   :scale: 55 

Die Ansicht - Das Erscheinungsbild von Layern �ndern
====================================================

Ein Polygon transparent darstellen
----------------------------------
   
   #. Selektieren Sie den Layer ``10m_admin_1_states_provinces.shp`` mit der linken Maustaste und klicken Sie noch einmal mit der rechten Maustaste darauf.
   #. Selektieren Sie das Untermen� *Eigenschaften*.
   #. Der Dialog **Layereigenschaften erscheint**.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_011.png
   :scale: 55 

Die Darstellungssymbole f�r einen Vekorlayer �ndern
---------------------------------------------------
   
   #. W�hlen Sie den Reiter *Symbole* im Dialog **Layereigenschaften**.
   #. Klicken Sie auf [Symbol w�hlen] um den **Symbol-Selektor** zu �ffnen.
   #. Entfernen Sie den Haken von der Box *Farbe der F�llung* um die Polygone transparent darzustellen.
   #. Klicken Sie auf den Button [OK] um zum Dialog **Layereigenschaften** zur�ckzukehren.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_012.png
   :scale: 55 

Die Beschriftung eines Vektor-Layers �ndern
-------------------------------------------
   
   #. W�hlen Sie den Reiter *Beschriftung* im Dialog **Layereigenschaften**.
   #. �ndern Sie die Texteigenschaften so wie im Beispiel dargestellt, klicken Sie dann auf den Button [Anwenden].


.. image:: ../../images/screenshots/1024x768/gvsig_qs_013.png
   :scale: 55 

Das Ergebnis
------------
   
Beachten Sie dass dies eine sehr einfache Ansicht ist, die nur jeweils eine Punkt-, Linien- und Polygon-Vektordatei zeigt die einer Rasterdatei �berlagert sind. Genau so einfach w�re es, ein Luftbild oder ein Digitales Gel�ndemodell als Hintergrund f�r Vektordaten zu verwenden, oder andere Vektordaten in unterschiedlichen Formaten anzuzeigen.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_014.png
   :scale: 55 

Eine �bung f�r Anwender - �ndern sie die Symbole und die Beschriftung der Punkt- und Linienlayer
----------------------------------------------------------------------------------
   
�ndern Sie Symbole, Farbe and Beschriftung f�r Fl�sse und St�dte so dass sie aussehen wie im folgenden Screenshot. Gehen Sie dazu den bisher beschriebenen Schritten entsprechend vor.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_015.png
   :scale: 55 

Einfache Analyse - selektieren Sie St�dte in einer Region
=========================================================

Die Region ausw�hlen
--------------------
   
   #. Selektieren sie den Layer ``10m_admin_1_states_provinces.shp`` mittels der linken Maustaste.
   #. Dr�cken Sie den Button �Auswahl durch Klick� in der Haupt-Werkzeugleiste.
   #. Klicken Sie in das Polygon welches den State of Victoria darstellt. Das Polygon wird gelb oder nimmt, je nach Anwendereinstellungen, eine andere Farbe an.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_016.png
   :scale: 55 

Die St�dte innerhalb einer Region ausw�hlen
-------------------------------------------
   
   #. Selektieren Sie den Layer ``10m_populated_places_simple.shp`` mittels der linken Maustaste.
   #. W�hlen Sie ``Ansicht > Elemente Ausw�hlen > Auswahl durch Layer`` um den Dialog **Auswahl durch Layer** zu �ffnen.
   #. �ndern Sie die beiden Auswahlkriterien mittels der Dropdown-Felder auf der linken Seite des Dialogs **Auswahl durch Layer**. Klicken Sie auf den Button [Neuer Datensatz] um St�dte innerhalb des gew�hlten Polygons zu selektieren.
   #. W�hlen Sie den Button [Abbrechen] im Dialog **Auswahl durch Layer** um zur Ansicht zur�ck zu gelangen.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_017.png
   :scale: 55 

Heben sie die Auswahl f�r das Polygon auf um das Ergebnis zu sehen
------------------------------------------------------------------
   
   #. W�hlen Sie den Layer ``10m_admin_1_states_provinces.shp`` mit der linken Maustaste.
   #. Klicken Sie auf das Symbol �Auswahl aufheben� in der Haupt-Werkzeugleiste.
   #. Sie sehen dass nur nur St�dte innerhalb von Victoria ausgew�hlt sind.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_018.png
   :scale: 55 

Exportieren Sie die ausgew�hlten St�dte in eine neue Shapedatei
---------------------------------------------------------------
   
   #. Selektieren Sie den Layer ``10m_populated_places_simple.shp`` mittels der linken Maustaste.
   #. W�hlen Sie ``Layer > Exportieren nach to... > SHP`` um mit dem Export zu beginnen.
   #. Der Dialog **Exportieren nach...** erscheint. gvSIG erkennt dass nur 26 Elemente selektiert sind und weist Sie darauf hin dass nur ein Teil der Shapedatei exportiert wird. W�hlen Sie zum fortfahren den Button [Ja].
   #. Der Dialog **Speichern** �ffnet sich. Geben Sie der Datei einem Namen und speichern Sie sie an einem Ort nach Wahl. Klicken Sie zum Fortfahren auf den Button [Speichern]. Beachten Sie dass eine Warnmeldung erscheint falls bereits eine gleichnamige Datei existiert.
   #. Der Dialog **Layer hinzuf�gen** erscheint. W�hlen Sie den Button [Ja] um die neue Shapedatei zur Liste der Layer hinzuzuf�gen.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_019.png
   :scale: 55 

Nur St�dte innerhalb einer Region anzeigen
------------------------------------------

   #. Zur�ck in der Ansicht entfernen Sie den Haken vor dem Layer ``10m_populated_places_simple.shp`` in der Layerliste.
   #. �ndern Sie Symbole und Beschriftung des layers ``test.shp`` wie im Screenshot unten dargestellt.
   #. Die Ansicht enth�lt jetzt nur St�dte innerhalb des State of Victoria.
   #. Verwenden Sie das Symbol [Fenster schlie�en] um zum **Projektverwalter** zur�ck zu gelangen, damit wir eine Karte aus dieser Ansicht erstellen k�nnen.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_020.png
   :scale: 55 
   
Wie man eine Karte erstellt
===========================

Erstellen Sie eine neue Karte und �ffnen Sie diese
--------------------------------------------------

   #. W�hlen sie den Dokumenttyp *Karte* im **Projektverwalter**.
   #. Klicken Sie den Button [Neu] um eine Karte zu erstellen.
   #. Selektieren Sie die neu erstellte Karte. In der Standardeinstellung hei�t dieseOhne ``Titel - 0``.
   #. Klicken Sie auf den Button [�ffnen].
   #. Eine leere Karte erscheint in einem eigenen Fenster, der Name lautet Karte: ``Ohne Titel - 0``. Beachten Sie dass eine Reihe von Punkten gleichm��ig �ber das Kartenbild verteilt ist. Man nennt dies Gitter oder Hilfslinien und sie helfen beim Erstellen und Formatieren der Karte indem sie nahe gelegene Punkte einrasten k�nnen.
   #. W�hlen Sie das Symbol [Fenster maximieren] um den ganzen Bildschirm zur Darstellung zu nutzen.

.. image:: ../../images/screenshots/1024x768/gvsig_qs_021.png
   :scale: 55 

F�gen sie eine Ansicht mit einem Gitternetz ein
-----------------------------------------------
   
   #. Klicken Sie auf das Symbol "Ansicht einf�gen" in der Haupt-Werkzeugleiste
   #. Erzeugen Sie ein Auswahlrechteck mit dem Umgriff der Karte auf der Seite, indem Sie auf die leere Karte klicken, die Maustaste gedr�ckt halten und ziehen, bis die gew�nschte Gr��e des Kartenausschnittes erreicht ist. Dadurch wird der Dialog **Eigenschaften Ansichtsrahmen** ge�ffnet.
   #. W�hlen Sie die zuvor erstellte *Ansicht*.
   #. Setzen Sie einen Haken bei der Option *Gitternetz anzeigen* dadurch wird ein Gitternetz erzeugt.
   #. Klicken Sie auf den Button [Konfigurieren] um den Dialog **Eigenschaften Koordinatengitter** zu �ffnen.
   #. Im Dialog **Eigenschaften Koordinatengitter** �ndern Sie das Intervall f�r das Gitter auf 1.0, das hei�t ein Grad zwischen den Linien f�r Breitengrade und L�ngengrade.
   #. �ndern Sie das Format des Gitters (der �bersichtlichkeit halber ist es besser Linien statt Punkte zu w�hlen).
   #. Vergr��ern sie die Schriftgr��e auf 14.
   #. Klicken Sie auf den Button [OK] um zum Dialog **Eigenschaften Ansichtsrahmen** zur�ck zu gelangen, dann dr�cken Sie [OK] um den Dialog zu schlie�en und zur Karte zur�ckzukehren.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_022.png
   :scale: 55 

Was kann man noch zur Karte hinzuf�gen?
---------------------------------------
   
   #. W�hlen Sie ``Karte > Eigenschaften`` aus dem Hauptmen� um die Dialogbox **Eigenschaften Karte** zu �ffnen. Entfernen Sie den Haken von *Gitternetz anzeigen* und klicken Sie auf [OK]. Das Gitternetz sollte nun von der Karte entfernt sein und die Karte sollte so aussehen wie unten dargestellt.
   #. Zus�tzliche Elemente wie eine Ma�stabsleiste oder ein Richtungspfeil k�nnen mit Hilfe der Symbole in der Haupt-Werkzeugleiste oder mit den Untermen�s im Men� Karte hinzugef�gt werden.
   #. Die Karte kann gedruckt oder zur weiteren Verwendung in anderen Dokumenten als PDF oder Postscript exportiert werden.
   #. W�hlen Sie das Symbol [Fenster schlie�en] um zum **Projektverwalter** zur�ck zu gelangen


.. image:: ../../images/screenshots/1024x768/gvsig_qs_023.png
   :scale: 55 

Speichern Ihres Projektes oder Schlie�en von gvSIG
==================================================
   
   1. Projekte k�nnen zur sp�teren Bearbeitung mittels der Option ``Datei > Speichern unter...`` gespeichert werden, oder
   2. man kann Projekte schlie�en indem man die Option ``Datei > Schlie�en`` ausw�hlt.


.. image:: ../../images/screenshots/1024x768/gvsig_qs_024.png
   :scale: 55 

Was kommt als n�chstes...
=====================

Deutschsprachige Dokumente und Tutorials finden neben vielen anderen Informationen im deutschen gvSIG wiki `gvSIG `<http://www.webmapping.info/mwgvsig/index.php?title=Hauptseite>`.

Einige Dokumente und Tutorials auf Englisch stehen unter `gvSIG <http://www.gvsig.org/web/projects/gvsig-desktop/description2/view?set_language=en>` zur Verf�gung.




