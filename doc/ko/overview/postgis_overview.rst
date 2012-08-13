.. Writing Tip:
  Writing tips describe what content should be in the following section.
  The postgis_overview.rst document is used as a reference example
  for other overviews.
  All other overviews should remove the writing tips in order to make the
  overview documents easier to translate.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo-Live
:Author: Barry Rowlingson
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. Writing Tip:
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: project logo
  :align: right
  :target: http://postgis.refractions.net/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

PostGIS
================================================================================

.. Writing Tip:
  Application Category Description:

Spatial Database
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  * First sentence should explain the application.
  * Usually the application domain will not be familiar to readers. So the
    next line or two should explain the domain. Eg: For GeoKettle, the next
    line or two should explain what GoeSpatial Business Intelligence is.
  * Remaining paragraph or 2 in this overview section should provide a
    wider description and advantages from a user perspective.

PostGIS�� ���������� PostgreSQL ��ü ������ �����ͺ��̽��� �����ϰ� �ϸ�, ����Ŭ ���м�(Oracle Spatial)�� ����Ŭ �����ͺ��̽��� �����ϰ� �ϴ� ������� ��������ü��(GIS)�� �������� ���� bakc-end �����ͺ��̽��� �̿�� �� �ֽ��ϴ�. 

PostGIS�� ������ ������ ����� �����ϰ� �������̰� ������ ��� ������ ������ ���� �Ӹ� �ƴ϶�, ���� ���� ���� �̿�Ǵ� ���� �ҽ� ���� �����ͺ��̽� �Դϴ�. �Ϸ翡�� �� �鸸�� �� �����Ͱ� �䱸�ǰ� �׶����Ʈ�� �����͸� �����ϴ� ���� ����� ��ü ���� �����Ͽ�, �� ���������� �پ��� ������� PostGIS�� �̿��ϰ� �ֽ��ϴ�. 

�����ͺ��̽� ������ ����ũž�� pgAdmin, phpPgAdmin ���� �̿��Ͽ� ���ͳ����� �����մϴ�. �������� import�� export�� shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis�� ���� command line ���̳� �׽�ũž, web GIS client�� ���� �����մϴ�. �̷��� Ŭ���̾�Ʈ�� ���� PostGIS ���� ������ ����ȭ �� ������ �� �ֽ��ϴ�.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 55 %
  :alt: pgAdmin database manager
  :align: right

�ֿ� ����
--------------------------------------------------------------------------------

* ������ ���� �м� ��� ����
  
  * Buffers, unions, overlays, distance ��

* ACID transactional integrity
* R-Tree spatial index
* Multi-user support
* Row-level locking
* Replication
* Partitioning
* Role-based security
* Table-spaces, schemas

�ݿ��� ���� ����
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards compliant (SFSQL)

�ڼ��� ����
--------------------------------------------------------------------------------

**Website:** http://postgis.refractions.net/

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** 1.5

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**Support:** http://www.osgeo.org/search_profile


Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/postgis_quickstart>`
