:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org), Daniel Nüst (d.nuest@52north.org)
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _52nSOS-overview-pl:

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/sos


52°North SOS
================================================================================

Usługi sieciowe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

52°North :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>` 
pozwala na czytanie zarówno archiwalnych, jak i danych odbieranych bezpośrednio przez sensory zdalne bądź in-situ. Sensorem może być kamera znajdująca się na satelicie lub wodomierz w strumieniu.
 
.. image:: ../../images/screenshots/1024x768/52n_sos_test_client_v1_0_0_GetCapabilities.png
  :scale: 60 %
  :alt: screenshot of 52°North SOS test client version 1.0.0
  :align: right

Funkcje
--------------------------------------------------------------------------------

* Zaimplementowane standardy SOS 1.0.0 i 2.0.0.

* Klient w przeglądarce internetowej dostarcza testowych zapytań
XML dla wszystkich obsługiwanych operacji.


OGC SOS 1.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
**Główne funkcje SOS**:

* GetCapabilities - zapytanie o opis usługi.
* GetObservation - zapytanie o czyste dane z sensora, zakodowane w Observations & Measurements (O&M).
* DescribeSensor - zapytanie o informacje o samym sensorze, zakodowane w standardzie Sensor Model Language (SensorML).

**Transakcyjne operacje SOS**:

* RegisterSensor - rejestracja nowego sensora.
* InsertObservation - utworzenie notki o rejestracji nowych sensorów.

**Dodatkowe funkcje SOS**:

* GetResult - umożliwia cykliczne pobieranie danych z sensora.
* GetObservationById - , for retrieving specific individual observations.
* GetFeatureOfInterest, for requesting the GML encoded representation of the feature that is the target of the observation.
* GetFeatureOfInterestTime, for determining the temporal availability of sensor data.

OGC SOS 2.0.0
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* GetCapabilities, for requesting a self-description of the service.
* GetObservation, for requesting the pure sensor data encoded in Observations & Measurements (O&M).
* DescribeSensor, for requesting meta information about the sensor itself, encoded in a Sensor Model Language (SensorML) instance document.
* GetFeatureOfInterest, for requesting the GML encoded representation of the feature that is the target of the observation.

Within these requests the following filter operators are possible:

* Spatial filter: BBOX, using a bounding box.
* Temporal filter: During, with time period.
* Temporal filter: TEquals, with time instant.

Zaimplementowane standardy
--------------------------------------------------------------------------------

* :doc:`Sensor Observation Service (SOS) <../standards/sos_overview>`
* :doc:`Geography Markup Language (GML) <../standards/gml_overview>`
* :doc:`Sensor Model Language (SensorML) <../standards/sensorml_overview>`

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://52north.org/communities/sensorweb/sos

**Licencja:** GNU General Public License (GPL) wersja 2

**Wersja programu:** SOS 3.5.0

**Systemy operacyjne:** Windows, Linux, Mac

**Interfejsy API:** Java

**Wsparcie komercyjne:** http://52north.org/

**Wsparcie społeczności:** http://sensorweb.forum.52north.org/

**Strona internetowa społeczności:** http://52north.org/communities/sensorweb/

Wprowadzenie
--------------------------------------------------------------------------------

* :doc:`Przejdź do wprowadzenia <../quickstart/52nSOS_quickstart>`

