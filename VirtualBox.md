---
layout: default
title: VirtualBox Installation
recipe-attribution: J. Franck
# recipe-attribution-link: http://www.opensourcefood.com/people/HungryJenny/recipes/soft-christmas-gingerbread-cookies
---
# VirtualBox Installation
## Requirements
* **Any** 64bit operating system (unfortunately, 32bit OS not supported).
* Administrative/root access on your laptop.
* *On Linux boxes*, it seems that the distribution's package for the kernel headers (eg., on debian this is linux-headers-amd64) is required.

## Installation Instructions

***Please note:*** It can take several hours to download the needed files below, and the installation and initialization can take 1-1.5 hrs.
We *strongly* recommend that you complete this procedure before attending the conference.

1. Download [Oracle VirtualBox](https://www.virtualbox.org/wiki/Downloads) and the [extension pack](http://download.virtualbox.org/virtualbox/4.3.26/Oracle_VM_VirtualBox_Extension_Pack-4.3.26-98988.vbox-extpack).
1. Install VirtualBox
    * Administrative/root access is required.
    * Be sure to allow it to associate file extensions.
1. Install extension pack (simply double-click if running as administrator).
    * If you are on **Windows** and *not running as an admin*:
        1. Note location of the **extension pack download** (e.g. `C:\Users\jmf356\Downloads`).
        1. Type `Virtual Box` into start menu/screen → right click → properties.
        1. Note the location of the **program executable** (e.g. `C:\Program Files\Oracle\VirtualBox\VirtualBox.exe`).
        1. Type `cmd` into start menu/screen: right click → run as administrator
        1. Type **program executable** followed by full path to the **extension pack** (e.g. `C:\Program Files\Oracle\VirtualBox\VirtualBox.exe` `C:\Users\jmf356\Downloads\Oracle_VM_VirtualBox_Extension_Pack-4.3.26-98988.vbox-extpack`)
    * On **Unix**-based systems, this step must be run as root/sudo
1. Download both Virtual Machines<a name="download"></a>:{% if site.VMs_available %}
    * VM that hosts Windows programs:
        * a [set of compressed images]()
            * use [7zip](http://www.7-zip.org/) (Windows), the xz-utils package (Unix/Mac), or StuffIt (OS X > 10.4) to extract the image
        * (less preferred) [as one file]().
{% else %}  
*(While we recommend that you install VirtualBox as soon as possible, the images (VMs) for the workshop are currently under construction.)*{% endif %}
1. Double-click on the VM image in order to import it.
    * Leave all default settings.
    * *do not* reinitialize the network adapter (MAC)
1. Run the Virtual Machine by clicking "Start"
    * Select "Don't show this message again" and click OK.
    * Select `<Right Cntrl>-c` to switch to "scaled mode".
1. When done, if the mouse will not leave the window, press the right `Cntrl` key to release the mouse.

And beyond... for a useful list of VirtualBox features [check here](http://www.howtogeek.com/171228/10-virtualbox-tricks-and-advanced-features-you-should-know-about/)
