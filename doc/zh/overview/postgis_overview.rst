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
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _postgis-overview:

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

.. Writing Tip:
  Include an OSGeo logo if the project is an OSGeo project, or is in
  incubation. OSGeo projects are listed on this page: http://www.osgeo.org/
  .. image:: images/logos/OSGeo_incubation.png
  .. image:: images/logos/OSGeo_project.png

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project in Incubation
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

.. Writing Tip: Name of application

PostGIS
================================================================================

.. Writing Tip:
  Application Category Description:

�ռ����ݿ�
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

PostGISʹ�����ܻ�ӭ��PostgreSQL�����ϵ�����ݿ��ܹ�֧�ֿռ����ݵĹ����봦��ʹ���ΪGIS��WEB��ͼӦ��ϵͳ�ĺ�̨���ݿ⣬����Oracle Spatial��Oracle���ݿ��е�����һ����

PostGIS�����ȶ������١����ݸ���׼�淶���������ٸ��ռ亯������Ϊ������Ϊ�㷺ʹ�õĿ�Դ�ռ����ݿ⡣PostGIS�����ڸ��ָ�����������֯��������ܷ��յ��������ź���֯��ÿ��Ҫ�洢TB�����ݡ������������WEB����

���ݿ�����ͨ��pgAdmin��phpPgAdmin���������ߣ�ʵ�������WEB����ʽ�����ݵ���򵼳���ͨ�������й��ߣ�shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis��ʵ�֣�Ҳ��ͨ������GIS��WEB GIS�ͻ���ʵ�֡���Щ�ͻ���Ҳ���Ե�ͼ��ʽ��ʾ�͹���PostGIS�ռ����ݿ��

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

��Ҫ����
--------------------------------------------------------------------------------

* ���ٸ��ռ亯��
  
  * Buffers, unions, overlays, distance��

* ACID����������
* R-Tree�ռ�����
* ���û�֧��
* Row-level��������
* ����
* ��������
* ��ɫ��ȫ����
* ��ռ䣬���ݿ���󼯺�

��ʵ�ֵı�׼�淶
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* ����OGC��׼�淶(SFSQL)

�������
--------------------------------------------------------------------------------

**��վ:** http://postgis.refractions.net/

**�汾:** GNU General Public License (GPL) version 2

**����汾:** 1.5

**����ƽ̨:** Windows, Linux, Mac

**API�ӿ�:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**֧��:** http://www.osgeo.org/search_profile


��������
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/postgis_quickstart>`
