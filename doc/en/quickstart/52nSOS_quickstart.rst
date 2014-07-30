:Author: Eike Hinderk Jürrens (e.h.juerrens@52north.org)
:Reviewer: 
:Version: osgeo-live8.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: 52°North - exploring horizons - logo
  :align: right
  :target: http://52north.org/sos
  
********************************************************************************
52°North SOS Quickstart 
********************************************************************************

The 52°North SOS is a web service, that allows you to provide and collect spatial sensor data (including metadata and measurements/observations).

This Quick Start describes how to:

  * Query the 52°North SOS Capabilities to determine what queries it supports.
  * Query details about an Observation from the SOS.

.. contents:: Contents
  
Getting Started
================================================================================

1. Select :menuselection:`Geospatial --> Web Services --> 52North --> Start 52North SOS` to start the 52°North SOS.
   
2. This will open the 52°North SOS client welcome page in firefox at http://localhost:8080/52nSOS/ (see Fig. 1).  
   Please click on the link labeled with “here” to complete the installation process (in the red highlighted message):

.. image:: ../../images/screenshots/1024x768/52n_sos_install_start.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS client welcome page
  :align: center

**Fig. 1**: 52°North SOS client - welcome page

3. Once you know `the capabilities of a SOS <http://localhost:8080/52nSOS/sos?REQUEST=GetCapabilities&SERVICE=SOS&ACCEPTVERSIONS=1.0.0>`_,
   (see Fiq. 2) you can craft appropriate queries. Again, this is made easier by selecting
   sample queries from the test client pull down list. Using the information from the
   capabilities, you can adjust the available example queries.

.. image:: ../../images/screenshots/1024x768/52n_sos_get_capabilities.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS client - test client with GetCapabilities response
  :align: center
  
**Fig. 2**: 52°North SOS client - test client with GetCapabilities response

4. To get for each time series the available observation data within the time interval from 
   2010-01-01T00:00:00.000+01:00 to 2010-01-01T01:59:00.000+01:00 insert the following request after
   selecting service "SOS" --> version "2.0.0" --> binding "/soap" --> operation "GetObservation" in
   the `test client <http://localhost:8080/52nSOS/client>`_ in the field request:
   
::

  <?xml version="1.0" encoding="UTF-8"?>
  <env:Envelope
      xmlns:env="http://www.w3.org/2003/05/soap-envelope"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/2003/05/soap-envelope http://www.w3.org/2003/05/soap-envelope/soap-envelope.xsd">
      <env:Body>
          <sos:GetObservation service="SOS" version="2.0.0"
              xmlns:sos="http://www.opengis.net/sos/2.0"
              xmlns:fes="http://www.opengis.net/fes/2.0"
              xmlns:gml="http://www.opengis.net/gml/3.2"
              xmlns:swe="http://www.opengis.net/swe/2.0"
              xmlns:xlink="http://www.w3.org/1999/xlink"
              xmlns:swes="http://www.opengis.net/swes/2.0" xsi:schemaLocation="http://www.opengis.net/sos/2.0 http://schemas.opengis.net/sos/2.0/sos.xsd">
              <sos:temporalFilter>
                  <fes:During>
                      <fes:ValueReference>phenomenonTime</fes:ValueReference>
                      <gml:TimePeriod gml:id="tp_1">
                          <gml:beginPosition>2010-01-01T00:00:00.000+01:00</gml:beginPosition>
                          <gml:endPosition>2010-01-01T01:59:00.000+01:00</gml:endPosition>
                      </gml:TimePeriod>
                  </fes:During>
              </sos:temporalFilter>
          </sos:GetObservation>
      </env:Body>
  </env:Envelope>
  
**Listing 1:** Request of observations

Things to Try
================================================================================

* Try some of the other example queries from the pull down list.
* Try tweaking some of these queries to get different information.
* Try the `View Client <http://localhost:8080/52nSOS/viewclient>`_ (see Fiq. 4).

.. image:: ../../images/screenshots/1024x768/52n_sos_viewclient.png
  :scale: 100 %
  :alt: screenshot of 52°North SOS client - view client with time series data
  :align: center
  
**Fig. 3**: 52°North SOS client - view client with tiem series data

What Next?
================================================================================

To learn more about 52°North SOS and/or the 52°North Sensor Web Community, potential starting points are:

* 52°North :doc:`SOS overview <../overview/52nSOS_overview>`,
* 52°North Sensor Web mailing list: swe@52north.org, 
* 52°North `Sensor Web community forum <http://sensorweb.forum.52north.org/>`_, 
* 52°North `SOS Client <http://sensorweb.demo.52north.org/SOSclient/>`_,
* 52°North `SOS website <http://52north.org/communities/sensorweb/sos/>`_, or 
* The website of the `52°North Sensor Web Community <http://52north.org/communities/sensorweb/>`_.
* The development of this version of the 52°North SOS was supported by different projects, organizations, and persons. 
  More details can be found in the `52°North SOS client <http://localhost:8080/52nSOS/index>`_.
* When the SOS is not available, please check if the tomcat servlet engine is running using the following command:

::

  user@osgeolive:~$ sudo /etc/init.d/tomcat6 status
  * Tomcat servlet engine is running with pid 1234          <-- Tomcat is running
  [...]
  * Tomcat servlet engine is not running.                   <-- Tomcat not runing, so please start:
  user@osgeolive:~$ sudo /etc/init.d/tomcat6 start
  * Starting Tomcat servlet engine tomcat6           [ OK ] <-- Tomcat is running, now
  
**Listing 1:** Tomcat Status and Start (password for sudo: user)