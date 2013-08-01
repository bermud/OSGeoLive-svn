:Author: OSGeo-Live
:Author: Astrid Emde
:Version: osgeo-live7.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)
:Thanks: mapbender-user list

.. image:: ../../images/project_logos/logo-Mapbender3.png
  :scale: 100 %
  :alt: project logo
  :align: right

********************************************************************************
Mapbender3 Quickstart 
********************************************************************************

Mapbender ist ein web-basiertes Geoportal Framework zum Veröffentlichen, Registrieren, Anzeigen, Navigieren und Überwachen von Diensten, mit der Möglichkeit Dienste gesichert anzubieten.

Administrationsoberflächen ermöglichen es Administratoren Karten- und Datendienste zu verwalten und zu kategorisieren. Über die Administration können einzelnen Benutzern und Gruppen Zugriffe gewährt werden.

Mapbender3 ist die nächste Version in der Mapbender Serie. Es wurde unter Verwendung moderner Webtechnologien komplett neu geschrieben. Die Grundlage bildet Symfony2, die brandneue Version des erfolgreichen Symfony PHP Web Application Framework.

Auf der Clientseite finden Sie OpenLayers und jQuery (UI) verbunden über MapQuery.

Mit dieser neuen Code-Grundlage setzen wir die Mapbender Idee eines Geoportal Frameworks fort.
  * Anwendungen können direkt im Browser erstellt und konfiguriert werden.
  * Dienste wie WMS können in einem Service Repository verwaltet und mit Anwendungen verbunden werden. 
  * Das Rechtemanagement ist sowohl für einzelne Benutzer als auch Gruppen einfach zu verwalten, egal ob sie in einer Datenbank oder über LDAP gespeichert werden.

Sie brauchen nichts weiter als einen Standard Webbrowser für diesen Schnellstart.

Dieser Quickstart beschreibt, wie Sie:

  * Mapbender starten
  * eine Anwendung erstellen
  * einen Web Map Service (OGC WMS) laden
  * WMS konfigurieren
  * eine eigene Anwendung erstellen
  * Benutzer und Gruppen anlegen und Anwendungen zuweisen

Eine Mapbenderanwendung wie folgt aussehen:

  .. image:: ../../images/screenshots/800x600/mapbender3_basic_application.png
     :scale: 80


Installation
================================================================================

Hinweise zur Installation von Mapbender finden Sie unter http://doc.mapbender3.org/en/book/installation.html.

Starten Sie Mapbender
================================================================================

#. Wählen Sie :menuselection:`Mapbender` aus dem Startmenü oder besuchen Sie http://localhost/mapbender3/app.php


#. Die Anwendung braucht ein eine kurze Zeit, um zu starten.

Falls Sie Schwierigkeiten haben, Mapbender zu starten, überprüfen Sie ob der Apache Web Server und die PostgreSQL Datenbank laufen.


Starten Sie Mapbender im Entwicklungsmodus über app_dev.php
==============================================================
Symfony bietet einen Entwicklungsmodus mit einer Reihe von Informationen über die Anwendung an (Logging, Fehlermeldungen, Datenbankabfragen, Speicherverbrauch, Zeit und mehr). Dieser Modus ist nur über localhost verfügbar.

  .. image:: ../../images/screenshots/800x600/mapbender3_app_dev.png
     :scale: 80

#. Start des Entwicklungsmodus: http://localhost/mapbender3/app_dev.php

#. Schauen Sie sich an, welche Information im Entwicklungsmodus angezeigt werden.

  .. image:: ../../images/screenshots/800x600/mapbender3_symfony_profiler.png
     :scale: 80


Die Willkommensseite
================================================================================

#. Die Willkommensseite listet die öffentlichen Anwendungen auf, die von allen Benutzern aufgerufen werden können. Die Anwendungen werden mit Screenshot, Titel und Beschreibung aufgelistet.

#. Sie können die Anwendung per Klick auf den Titel oder den Startbutton aufrufen.

#. Bevor Sie Mapbender administrieren können, müssen Sie sich anmelden.

#. Klicken Sie auf das Mapbender-Logo links, um die Loginseite aufzurufen.

#. Sie können sich mit den Benutzer anmelden, der während der Installation erzeugt wurde. Es kann :guilabel:`root` heißen mit dem Kennwort :guilabel:`root`  (Dies ist der Standardbenutzer und Kennwort nach der Installation von Mapbender auf der OSGeo-Live. Bitte ändern Sie das Kennwort, wenn Sie eine Produktivumgebung betreiben. Löschen Sie den Benutzer :guilabel:`root` nicht.).
  
  .. image:: ../../images/screenshots/800x600/mapbender3_welcome.png
     :scale: 80

Nach erfolgreicher Anmeldung werden Sie zur :guilabel:`Mapbender Administration` weiter geleitet.


Anwendungsübersicht
================================================================================
Nach der Anmeldung werden Sie zum :guilabel:`Applications` mit einer Liste von für Sie freigegebenen Anwendungen weiter geleitet.

Die Anwendungsübersicht bietet folgende Funktionen:


 * Titel und Beschreibung
 * Ein Link zur Anwendung
 * Eine Schaltfläche um die Anwendung zu bearbeiten
 * Ein Icon zum Veröffentlichen der Anwendung
 * Eine Schaltfläche um eine neue Anwendung anzulegen
 * Eine Schaltfläche um die Anwendung zu löschen

  .. NOCH NICHT IMPLEMENTIERT: In Mapbender gibt es Anwendungsvorlagen, mit denen eigene Anwendungen erstellt werden können.

  .. image:: ../../images/screenshots/800x600/mapbender3_application_overview.png
     :scale: 80


Erstellen Sie eine eigene Anwendung
================================================================================

Erstellen Sie eine neue Anwendung, indem Sie einige grundlegende Informationen eingeben. Anschließend können die den Editiermodus benutzen, um Elemente, Layer und Sicherheitseinstellungen zu verwalten.

#. Wählen Sie :menuselection:`Applications --> New Application`

#. Geben Sie einen Titel und eine Beschreibung der Anwendung ein

#. Geben Sie einen URL-Titel an, der in der URL benutzt wird, um die Anwendung zu starten. Er kann identisch zum Titel sein.

#. Betätigen Sie die Schaltfläche **Create**, um die Anwendung zu erzeugen.

#. Gehen Sie zu :menuselection:`Edit-Button` neben der Anwendung und wählen Sie die neue Anwendung aus.

#. Ihre Anwendung wurde erstellt. Jetzt brauchen Sie WMSs, die in Ihrer Anwendung dargestellt werden. Dies wird im Abschnitt **WMS Management** beschrieben.

  .. image:: ../../images/screenshots/800x600/mapbender3_create_application.png
     :scale: 80

..
  NOCH NICHT IMPLEMENTIERT
  Kopieren und Umbenennen einer Anwendung
  ================================================================================
 Sie können eine neue Anwendung auch durch Kopieren einer vorhandenen erzeugen. Gehen Sie zu :menuselection:`Applications --> Rename/copy application`, wählen die Anwendung, die Sie kopieren möchten und geben einen Namen für die neue Anwendung ein. Diese Funktion kopiert sowohl die Anwendung als auch die Dienste der Anwendung und die Benutzer/Gruppen (optional). Die neue Anwendung hat dadurch bereits die Kartendienste eingebunden und die Benutzer und Gruppen der kopierten Anwendung haben ebenfalls Zugriff auf die neue Anwendung.

Löschen einer Anwendung
================================================================================
Sie können eine Anwendung aus der Liste :menuselection:`Applications` über den :menuselection:`+-button` löschen. Nur die Anwendung wird gelöscht, nicht die Dienste, die in der Anwendung eingebunden waren.

..
  NOCH NICHT IMPLEMENTIERT
  Exportieren einer Anwendung
  ================================================================================
  Sie können eine Anwendung als SQL-Skript über :menuselection:`Applications --> Export  application (SQL)` exportieren. Das SQL-Skript beinhaltet alle Definitionen der Anwendungselemente und kann in eine andere Mapbenderinstallation importiert werden.

  .. tip:: Der Export einer Anwendung beinhaltet weder die Informationen über die Dienste noch über die Benutzer und Gruppen.


Verwaltung von Datenquellen
=================================
Mapbender kann verschiedene Dienste wie OGC WMS, OGC WMTS oder OGC WFS verwalten. Jeder Service muss anders verwaltet werden. Die Administration bietet für jede Quelle eine Administrationsoberfläche (im Moment lediglich WMS).


Überblick des Service Repository
====================================

#. Gehen Sie auf :guilabel:`Services` und schauen sich die Dienstquellen an.

#. Sie bekommen einen Überblick über die Dienste, die bereits in Mapbender geladen wurden.

#. Typ (z.B. WMS, WMTS), Titel und Beschreibung bieten eine erste Information über den Dienst.

#. Per Klick auf den :menuselection:`View-Button` bekommen Sie weitere Informationen über die Quelle.

#. Über den :menuselection:`Delete-Button` können Sie die Datenquelle aus ihrem Repository löschen.


Laden von Web Map Services
================================================================================
Sie können OGC Web Map Services (WMS) in Ihre Applikation laden.

Ein WMS liefert eine XML-Datei, wenn das getCapabilities-Dokument angefordert wird. Diese Information wird von Mapbender analysiert, wodurch er alle notwendigen Informationen über den Dienst aus diesem XML erhält.

.. tip:: Sie sollten das Capabilities-Dokument zuerst in Ihrem Browser überprüfen, bevor Sie versuchen, es in Mapbender zu laden.

#. Wählen Sie :menuselection:`Services --> Add Service`. Geben Sie den Link zur WMS getCapabilities URL in das Textfeld :menuselection:`Originurl` ein.

#. Geben Sie Nutzername und Kennwort ein, sofern der Dienst Authentifizierung benötigt.

#. Klicken Sie **Load**, um den Dienst in das Repository zu laden.

#. Nach erfolgreicher Registrierung des Dienstes zeigt Mapbender eine Übersicht der Informationen an, die der Service geliefert hat.

  .. image:: ../../images/screenshots/800x600/mapbender3_wms_load.png
     :scale: 80


Hier sind einige Beispiel WMS:

Germany demo 

http://wms.wheregroup.com/cgi-bin/germany.xml?VERSION=1.1.1&REQUEST=GetCapabilities&SERVICE=WMS 

WhereGroup OSM WMS (siehe auch http://www.wheregroup.com/de/osmwms)

http://osm.wheregroup.com/cgi-bin/osm_basic.xml?REQUEST=GetCapabilities&SERVICE=WMS&VERSION=1.1.1

Omniscale OSM WMS (siehe auch http://osm.omniscale.de/)
http://osm.omniscale.net/proxy/service?
 

.. NOCH NICHT IMPLEMENTIERT
  .. tip:: Create a container application and upload every WMS just once to this container application. You can transfer the WMS from this container to other aplications. When you update the WMS the possible changes will appear in all applications that contain this WMS. You easily can copy a WMS from one to another application with the menu entry *Link WMS to application*.
  .. tip:: Erzeugen Sie eine Containeranwendung und laden Sie jeden WMS nur einmal hier hinein. Sie können die WMS aus diesem Container in andere Anwendungen übernehmen. Wenn Sie diesen WMS aktualisieren werden mögliche Änderungen in allen Anwendungen übernommen, die diesen WMS beinhalten. Sie können einen WMS einfach von einer Anwendung zu einer anderen über den Menüeintrag *Link WMS to application* kopieren.


Fügen Sie Dienste zur Anwendung hinzu
===========================================
Nach dem erfolgreichen Hochladen eines WMS möchten Sie diesen zu einer Anwendung hinzufügen.

#. Wählen Sie :menuselection:`Applications --> Edit-Button --> Layers --> Edit-Button`.

#. Wählen Sie den :menuselection:`+-button` um ein layerset hinzuzufügen. Ein Layerset präsentiert mehrere Layer (ein möglicher Name könnte main sein)

#. Jetzt können Sie Dienste zum layerset hinzufügen.

#. Wählen Sie den :menuselection:`+-button` um dem neuen layerset Dienste hinzuzufügen.

#. Sie können die Reihenfolge der Dienste in Ihrer Anwendung über  drag & drop ändern.
	
  .. image:: ../../images/screenshots/800x600/mapbender3_add_source_to_application.png
     :scale: 80

Konfigurieren von Diensten
================================================================================
Sie können Dienste für Ihre Anwendung konfigurieren. Vielleicht möchten Sie nicht alle Layer anbieten oder Sie möchten die Reihenfolge oder den Titel des Layers ändern, die Info-Abfrage für einzelne Layer verhindern oder den Maximalmaßstab ändern.

#. Wählen Sie :menuselection:`Applications --> edit-Button --> Layers --> edit-Button`, um eine Instanz zu konfigurieren.

#. Sie sehen eine Tabelle mit den Layern des Dienstes.

#. Sie können die Reihenfolge der Layer über drag & drop ändern.

.. image:: ../../images/screenshots/800x600/mapbender3_wms_application_settings.png
  :scale: 80

Servicekonfiguration

* format - wählen Sie das Format für den getMap-Requests
* infoformat - wählen Sie das Format für getFeatureInfo-Requests
* exceptionformat - wählen Sie das Format für exceptions
* opacity - wählen Sie die Opazität (Deckkraft) in Prozent
* visible
* proxy
* transparency
* tiled - Sie können eine WMS in Kacheln anfordern, Standard ist nicht gekachelt.


Layerkonfiguration

* title - layer title von der Service Information
* active (on/off) - schaltet einen Layer in dieser Anwendung ein/aus
* select on - auswählbar im Geodatenexplorer (Layerbaum)
* select allow - Layer ist bei Anwendungsstart aktiv
* info on - der Layer reagiert auf feature info requests, info default aktiviert diese Funktionalität in der Anwendung
* info allow 
* minscale / maxscale - Der Maßstabsbereich, in dem der Layer angezeigt wird. 0 bedeutet keine Maßstabsbeschränkung
* toggle
* reorder
* ... -> öffnet einen Dialog mit weiteren Informationen
* name
* style - wenn ein WMS mehr als einen Style anbietet, können Sie einen anderen Style als den default Style wählen.



Fügen Sie Elemente zu Ihrer Anwendung hinzu
=================================================
Mapbender biete eine Reihe von Elementen. Sie können diese Anwendung in verschiedene Bereiche (Toolbar, Sidepane, Content, Footer) ihrer Anwendung hinzufügen.

  .. image:: ../../images/screenshots/800x600/mapbender3_application_add_element.png
     :scale: 80

#. Wählen Sie :menuselection::menuselection:`Applications --> edit-Button --> Layers --> +-Button` um eine Übersicht über die Mapbender3-Elemente zu erhalten.

#. Wählen Sie ein Element aus der Liste aus.

#. Beachten Sie die verschienden Bereiche, die Sie in Ihrer Anwendung haben. Stellen Sie sicher, dass sie das Element zum richtigen Bereich hinzufügen.

#. Sehen Sie sich ihre Anwendung an. Öffnen Sie Ihre Anwendung über :menuselection:`Applications --> Applications Overview`


  .. image:: ../../images/screenshots/800x600/mapbender3_application_elements.png
     :scale: 80

 
Wenn Sie ein Element, z.B. **map** auswählen, sehen Sie die Optionen für dieses Element und können es entsprechend konfigurieren.


Beispiele für Elemente, die Mapbender3 anbietet:

* About Dialog
* Activity Indicator
* Button
* Coordinates Display
* Copyright
* Feature Info
* GPS-Position
* Legend
* Layertree - Table of Content
* Map
* Overview
* PrintClient
* Ruler Line/Area
* Scale Selector
* ScaleBar
* Search Router
* SRS Selector
* Spatial Reference System Selector (SRS Selector)
* Navigation Toolbar (Zoombar)
* WMS Loader

Sie finden detaillierte Informationen zu jedem Element unter `MapbenderCoreBundle element documentation <http://doc.mapbender3.org/en/bundles/Mapbender/CoreBundle/index.html>`_.

Versuchen Sie es selber
================================================================================

* Fügen Sie eine Karte (Map-Element) zum content-Bereich Ihrer Anwendung hinzu.
* Fügen Sie ein Inhaltsverzeichnis (Layertree) zum content-Bereich Ihrer Anwendung hinzu.
* Fügen Sie einen Butten hinzu, der das den Layertree öffnet.
* Fügen Sie das Navigationselement in den content-Bereich hinzu
* Fügen Sie ein copyright-Element hinzu und ändern Sie den Copyright-Text.
* Fügen Sie einen SRS Selector in den footer-Bereich ein.



Benutzer- und Gruppenverwaltung
=================================
Zugriff auf eine Mapbenderanwendung benötigt Authentifizierung. Nur öffentliche Anwendungen können von allen genutzt werden.

Ein Benutzer hat Berechtigungen, um auf eine oder mehrere Anwendungen und Dienste zuzugreifen.

.. NOCH NICHT IMPLEMENTIERT
  Es gibt keinen vorgegebenen Unterschied zwischen Rollen wie :guilabel:`guest`, :guilabel:`operator` oder :guilabel:`administrator`. Die :guilabel:`role` eines Benutzers beruht auf den Funktionen und des Diensten, aud die der Benutzer durch diese Anwendung Zugriff hat.


Benutzer anlegen
================================================================================

#. Um einen Benutzer anzulegen, gehen Sie zu :guilabel:`New User` oder wählen Sie den :menuselection:`+-Button`.

#. Wählen Sie einen Namen und ein Kennwort für Ihren Benutzer. 

#. Geben Sie eine E-Mail-Adresse für den Benutzer an.

#. Speichern Sie Ihren neuen Benutzer.

.. image:: ../../images/screenshots/800x600/mapbender3_create_user.png
     :scale: 80 


Gruppen anlegen
================================================================================
#. Erzeugen Sie eine Gruppe über  :guilabel:`New Group`. 

#. Wählen Sie einen Namen und eine Beschreibung für Ihre Gruppe.

#. Speichern Sie Ihre neue Gruppe.


Benutzer einer Gruppe zuweisen
================================================================================

#. Weisen Sie einen Benutzer einer Gruppe über :guilabel:`Users --> Groups` zu. 

#. Wählen Sie einen oder mehrere Benutzer über :menuselection:`Users` aus, die Sie der Gruppe zuweisen wollen.

#. Weisen Sie einen Benutzer über :menuselection:`Users --> Edit-Button--> Groups` einer Gruppe zu.

  .. image:: ../../images/screenshots/800x600/mapbender3_assign_user_to_group.png
     :scale: 80
 

Rollen
========
Mapbender3 bietet verschiedene Rollen an, die Sie einer Gruppe zuweisen können.

* Kann alles administrieren (super admin)
* Kann Benutzer & Gruppen administrieren
* Kann Anwendungen administrieren

#. Weisen Sie einer Gruppe eine Rolle über :menuselection:`Users --> Edit your User --> Security` zu.

  .. image:: ../../images/screenshots/800x600/mapbender3_roles.png
     :scale: 80 


Zuweisen einer Anwendung zu einem Benutzer/einer Gruppe
============================================================
#. Bearbeiten Sie Ihre Anwendung über :menuselection:`Application --> Edit-Button`.

#. Wählen Sie :menuselection:`Security`

#. Setzten Sie Berechtigungen wie view edit delete operator master owner 

#. Weisen Sie eine Anwendung einem Benutzern/einer Gruppe zu

#. Testen Sie die Konfiguration!

#. Melden Sie sich über :menuselection:`Logout` ab.

#. Melden Sie sich unter der neuen Benutzerbezeichnung an

  .. image:: ../../images/screenshots/800x600/mapbender3_security.png
     :scale: 80


Weitere Aufgaben
================================================================================

Hier sind einige weiter Dinge, die Sie ausprobieren sollten:

#. Versuchen Sie, einige WMS in Ihre Anwendung zu laden. Versuchen Sie Ihre WMS zu konfigurieren.

#. Versuchen Sie eine eigene Anwendung zu erzeugen.


Was kommt als Nächstes?
================================================================================

Dies waren nur die ersten Schritte mit Mapbender3. Es gibt viele weitere Funktionen, die Sie ausprobieren können.

Mapbender Projektseite

  http://mapbender.org

Mapbender3 Webseite

  http://mapbender3.org/

Sie finden Tutorials unter

  http://doc.mapbender3.org

Die API-Dokumentation finden Sie unter

  http://api.mapbender3.org

Beteiligen Sie sich

	http://www.mapbender.org/Community
