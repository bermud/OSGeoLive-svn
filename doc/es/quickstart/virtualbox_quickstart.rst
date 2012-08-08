:Author: OSGeo-Live
:Author: Cameron Shorter
:Translator: Nacho Varela
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Gu�a de inicio r�pido para OSGeo-Live Virtual Box
********************************************************************************

Aqu� se describe una forma de ejecutar un OSGeo-Live DVD o una imagen ISO en `VirtualBox <http://www.virtualbox.org/>`_ .

VirtualBox es un software de virtualizaci�n de C�digo Abierto usado por muchos desarrolladores y testers de OSGeo-Live.

Requerimientos del Sistema
--------------------------------------------------------------------------------

* RAM: 1 GB, preferiblemente 2 GB si se van a ejecutar otras aplicaciones al mismo tiempo
* Espacio de disco duro disponible:

 * |osgeo-live-hdspace| si se ejecuta directamente desde una ISO
 * 17 GB si se instala f�sicamente en el sistema

Crear una M�quina Virtual
--------------------------------------------------------------------------------
Descargar e instalar `Virtual Box <http://www.virtualbox.org/>`_. En Linux hacer lo siguiente:

  ``apt-get install virtualbox-ose``

Abrir Virtual Box 

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

Seleccionar :guilabel:`Nuevo` para crear una nueva M�quina Virtual.

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

Seleccionar :guilabel:`Siguiente`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Introducir un nombre para la imagen, por ejemplo "osgeo-live" y elegir "Linux", "Ubuntu".

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Asignar la Memoria Base con al menos 768 MB (1 GB es mejor para probar aplicaciones basadas en java).

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Instalaci�n simple: Desmarcar "Boot Hard Disk" para que la M�quina Virtual siempre arranque desde el DVD simulado.

Si desea tener una M�quina Virtual persistente, que almacene el estado entre sesiones y que pueda ajustar la resoluci�n de pantalla u otras herramientas, entonces incluya el "disco duro" para su instalaci�n posterior.

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

Seleccionar :guilabel:`Siguiente`

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

Seleccionar :guilabel:`Crear`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

La imagen se crear�, pero es necesario simular la existencia de un OSGeo-Live DVD en la unidad de CD.

Pulse el bot�n derecho de rat�n sobre la imagen "osgeo-live" y seleccione :guilabel:`Configuraci�n`.

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

Seleccionar "Almacenamiento", "Unidad CD/DVD", ...

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

Escoger el fichero con la imagen del OSGeo-Live.

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Ahora ya es posible iniciar la M�quina Virtual como se indica en :doc:`osgeolive_quickstart`

Crear una M�quina Virtual permanente
--------------------------------------------------------------------------------
Si su intenci�n es usar mucho el OSGeo-Live DVD es probable que desee crear una M�quina Virtual permanente como se indica en :doc:`osgeolive_install_quickstart`.

Incrementar el tama�o de la pantalla
--------------------------------------------------------------------------------
Se pueden a�adir las 'virtual boots tools' que ofrecen suporte para mayores resoluciones de pantalla,
copiar y pegar textos entre el sistema hu�sped y anfitri�n, aceleraci�n gr�fica y otros.

Para ello, asegurar que el ordenador est� conectado a internet correctamente.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

Seleccionar la aplicaci�n de 'Gesti�n de paquetes Synaptic'.

Introduzca la contrase�a = "user"

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

Marcar "virtualbox-ose-guest-utils" para su instalaci�n.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

Aplicar cambios.

Reiniciar la M�quina Virtual y los ajustes de la pantalla coincidir�n con los de la m�quina anfitriona. Las opciones pueden ser cambiadas v�a:

Seleccionar: :menuselection:`Applications --> Settings --> Xfce 4 Settings Manager --> Display`

Ver tambi�n:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

