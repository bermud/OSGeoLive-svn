:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Version: osgeo-live4.0
:License: Creative Commons

.. _52nSOS-quickstart:
 
.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos
  
***********************
52°North SOS Quickstart 
***********************

Getting Started
===============

The 52°North SOS is a web service, that allows you to provide and collect spatial sensor data (including metadata and measurements/observations).

1) Go to :menuselection:`Geospatial --> Web Services --> Start 52North SOS` to start the 52°North SOS or use this `direct link <http://localhost:8080/52nSOSv3.1.1/>`_.
  (If the service is not reachable, try to start the Tomcat servlet engine following the steps at the bottom of this page.)

2) Firefox will open the 52°North SOS test client (see Fiq. 1):

.. image:: ../../images/screenshots/1024x768/52n_sos_test_client.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS test client
  :align: center
  
**Fig. 1**: 52°North SOS test client - welcome page  
  
3) To get started with the SOS, select the **GetCapabilities_allSections.xml** [1] request from the drop down list next to "Request Examples".
  
4) Push the **Send button** [2] and the request will be transmitted to the 52°North SOS. As result, a XML document is returned (see Fig. 2), which shows a the capabilities of the SOS (available data,...).

.. image:: ../../images/screenshots/1024x768/52n_sos_response.png
  :scale: 70 %
  :alt: screenshot of 52°North SOS output - GetCapabilities response encoded in XML
  :align: center
  
**Fig. 2**: 52°North SOS - GetCapabilities response (XML encoded)
  
5) In Order to build your own requests you will need the `capabilities of the 52°North SOS <http://localhost:8080/52nSOSv3.1.1/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_. Using this input, you can edit the provided requests by the test client. Just select them from the drop down menu.

Additional Information
======================

* To learn more about 52°North SOS and/or 52°North, potential starting points are:

* the 52°North `SOS overview <../overview/52nSOS_overview.html>`_,
* the 52°North Sensor Web mailing list: swe@52north.org, 
* check the 52°North `Sensor Web community forum <http://sensorweb.forum.52north.org/>`_, 
* 52°North `SOS website <http://52north.org/communities/sensorweb/sos/>`_, or 
* the website of the `52°North Sensor Web Community <http://52north.org/communities/sensorweb/>`_.

* When the SOS is not available, please check if the tomcat servlet engine is running using the following command:

::

  user@osgeolive:~$ sudo /etc/init.d/tomcat6 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat is running
  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat not runing, so please start:
  user@osgeolive:~$ sudo /etc/init.d/tomcat6 start
  * Starting Tomcat servlet engine tomcat6           [ OK ] <-- Tomcat is running, now
  
**Listing 1:** Tomcat Status and Start (password for sudo: user)

* The development of this version of the 52°North SOS was supported by the European FP7 research project `EO2HEAVEN <http://www.eo2heaven.org/>`_ 
  (co-funded by the European Commission under the under grant agreement n°244100):

.. image:: ../../images/project_logos/logo_52North_other_200px.png
  :scale: 100 %
  :alt: EO2HEAVEN - Earth Observation and ENVironmental Modeling for the Mitigation of HEAlth Risks
  :align: center
  :target: http://www.eo2heaven.org/
