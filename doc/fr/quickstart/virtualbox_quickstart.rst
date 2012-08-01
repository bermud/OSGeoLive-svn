:Author: OSGeo-Live
:Author: Cameron Shorter
:Version: osgeo-live4.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
OSGeo-Live Quickstart for Virtual Box
********************************************************************************

Nous d�crivons ici une m�thode pour faire fonctionner un DVD OSGeo-Live DVD ou une image ISO dans la Machine Virtuelle `VirtualBox <http://www.virtualbox.org/>`.

VirtualBox est une Machine Virtuelle Open Source qui est utilis�e par de nombreux d�veloppeurs et testeurs du OSGeo-Live.

Configuration requise
--------------------------------------------------------------------------------

* RAM: 1 GB, de pr�f�rence 2 GB si vous pr�voyez de faire fonctionner d'autres applications
* Spare Hard Disk Space:

 * |osgeo-live-hdspace| s'il fonctionne depuis l'image ISO
 * 17 GB si vous installez localement depuis l'image ISO

Cr�ez une Machine Virtuelle
--------------------------------------------------------------------------------
T�l�chargez et installez`la Virtual Box<http://www.virtualbox.org/>`_. Sur linux faites ainsi:

  ``apt-get install virtualbox-ose``

Ouvrez la Virtual Box 

  .. image:: ../../images/screenshots/800x600/virtualbox.png
    :scale: 70 %

S�lectionnez :guilabel:`New` pour cr�er une nouvelle Machine Virtuelle.

  .. image:: ../../images/screenshots/800x600/virtualbox_create_vm.png
    :scale: 70 %

S�lectionnez :guilabel:`Next`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_name.png
    :scale: 70 %

Indiquez un nom pour l'image, et s�lectionnez "Linux", "Ubuntu".

  .. image:: ../../images/screenshots/800x600/virtualbox_memory.png
    :scale: 70 %

Indiquez la m�moire de base au plus � 768 MB, 1 GB est mieux pour essayer les applications abs�es sur java.

  .. image:: ../../images/screenshots/800x600/virtualbox_no_hard_disk.png
    :scale: 70 %

Installation simple: D�selectionnez "Boot Hard Disk", la Machine Virtuelle d�marrera toujouirs depuis un DVD simul�.

Si vous voulez avoir une machine virtuelle permanente, qui conserve l'�tat entre les sessions et qui a am�lior� les param�tres de r�solution de l'�cran et les outils, inluez alors le disque dur, et installez-la plus tard.

  .. image:: ../../images/screenshots/800x600/virtualbox_warning_no_hard_disk.png
    :scale: 70 %

S�lectionnez :guilabel:`Continue`

  .. image:: ../../images/screenshots/800x600/virtualbox_final_check.png
    :scale: 70 %

S�lectionnez :guilabel:`Finish`

  .. image:: ../../images/screenshots/800x600/virtualbox_select_settings.png
    :scale: 70 %

L'image est maintenant cr��e, mais nous avons maintenant besoin de simuler avoir un DVD OSGeo-Live dans le lecteur de CD.

Click-droit sur l'image "osgeo-live", et s�lectionnez :guilabel:`Settings`.

  .. image:: ../../images/screenshots/800x600/virtualbox_set_cd.png
    :scale: 70 %

S�lectionnez "Storage", CD/DVD Device, ...

  .. image:: ../../images/screenshots/800x600/virtualbox_add_dvd.png
    :scale: 70 %

S�lectionnez l'image OSGeo-Live.

  .. image:: ../../images/screenshots/800x600/virtualbox_start_vm.png
    :scale: 70 %

Maintenant vous pouvez d�marrer la machine virtuelle ainsi :doc:`osgeolive_quickstart`

Cr�ez une Machine Virtuelle permanente
--------------------------------------------------------------------------------
Si vous pr�voyez d'utiliser souvent le DVD OSGeo-Live DVD, vous appr�cierez de cr�er une machine virtuelle permanente, ainsi: :doc:`osgeolive_install_quickstart`.

Augmentez la taille d'affichage
--------------------------------------------------------------------------------
Vous pouvez ajouter les outils d'amor�age virtuel qui supportent une r�solution d'�cran plus importante, copiez et collez entre l'invit� et le host, l'acc�l�ration graphique, et davantage.

Assurez-vous que votre ordinateur est connect� sur internet.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_menu.png
    :scale: 70 %

S�lectionnez l'application de gestion des paquets synaptiques.

Entrez le mot de passe = "user"

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_select_tools.png
    :scale: 70 %

Marquez "virtualbox-ose-guest-utils" pour l'installation.

  .. image:: ../../images/screenshots/800x600/virtualbox_synaptic_apply.png
    :scale: 70 %

Appliquez les changements.

Red�marrez la machine virtuelle et affichez les param�tres pour trouver les param�tres d'affichage de votre ordinateur. Cela peut �tre chang� depuis:

S�lectionnez: :menuselection:`Applications --> Settings --> Xfce 4 Settings Manager --> Display`

Voir aussi:
--------------------------------------------------------------------------------

 * :doc:`osgeolive_quickstart`
 * :doc:`osgeolive_install_quickstart`
 * :doc:`usb_quickstart`

