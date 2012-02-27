:Author: Johannes Wilden
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _deegree-overview:

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://deegree.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


deegree
================================================================================

Web����
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

deegreeһ����ѵġ��ȶ��ġ�����ǿ��Ĳ������ײ���������� ����ѺͿ�Դ����У�deegree��ȫ����Ͽ��ŵ�����Ϣ���˱�׼��OGC����,
����Web Feature Service��ͨ��Web Terrain Service��ʾ��ά�����Լ�������࣡

deegreeһ�����ڵ�����Ϣϵͳ��GIS���Ϳռ����ݻ�����ʩ��SDI���������������������
����ȫ���ǿ���JavaӦ�ó���ӿڣ�API������Լ��븴�ӿռ�ģʽ��ǿ�����-��ϵ�͵�ӳ������ɡ�
deegree���ṩһ����ݱ�׼��Web��ͼ������Ҫ�غ�Ŀ¼�����Լ��������ʹ���ȷ���

deegree�ṩ�û�SDI��֧���û��Լ������ݣ������������.


.. image:: ../../images/screenshots/1024x768/deegree_mainpage.gif
  :scale: 50%
  :alt: project logo
  :align: right

����ʾ��
--------------------------------------------------------------------------------

* Web Map Service

  * �ǳ�������Ӧͼ������
  * ֧��ʹ����ʽ����(SLD 1.0)
  * ͨ��ͼ����״ͼ������ͼ���ߣ�����ר��ͼ
  * ����Դ: ���г�����OGC�������(WMS, WFS, WCS), PostgreSQL/PostGIS, Oracle Spatial, �κ�SQL�������ṩ���ڴ���WMSͼ������
  * ��ʹ��߶ȵ�ͼҲ���ȶ�
  * ֧��HTTP GET, HTTP POSTЭ���Ҫ����Ϣ����
  * �ѱ���֤��OGC��׼�����

* Web Feature Service

  * ֧�ּ򵥺͸��ӵĹ���
  * 3000��������ο�ϵͳ�Ķ�̬ת��
  * ֧�����������ʽ
  * ���׸�����֧��INSPIREָ��

* Web Coverage Service

  * ֧��HTTP GET��HTTP POST����
  * ����Դ: ͼ�� (tif, png, jpeg, gif, bmp); GeoTIFF; ECW�ļ�; Oracle GeoRaster
  * ���ٷ��ʴ�������coverages

* Catalogue Service

  * ����Դ: PostgreSQL-Database; Oracle-Database
  * ֧������: GetCapabilities; DescribeRecord; GetRecordById; GetRecords; Transaction - Insert, Update, Delete; Harvesting

* Web Map Print Service

  * ֧�ֲ�ͬ�Ĵ�ӡ��ʽ(HTML, PDF, PNG)
  * ��ʱ�����е���������ҵ
  * ֧���첽�����Խ��д����ͼ����
  * ��ʹ����Ա���߻�������ֹͣ��WMPS������洢�����ݿ��У���Ȼ���á�

* Web Perspective View Service

   * ����Դ: remote/local-WMS, remote/local-WFS, local-WCS, Postgres/PostGIS, Oracle Spatial
   * �߳�ģ�Ϳ�����ʸ�����ݻ���դ������
   * ����: Get3DFeatureInfo, GetView


��ʵ�ֵı�׼�淶
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 in progress)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 in progress)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; including OGC ISOAP 1.0 and INSPIRE profile
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

�������
--------------------------------------------------------------------------------

**��վ:** http://deegree.org

**��Ȩ:** LGPL

**����汾:** 3.0

**֧��ƽ̨:** Windows, Linux

**API�ӿ�:** Java

**֧��:** http://wiki.deegree.org/deegreeWiki/GettingSupport

��������
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/deegree_quickstart>`
