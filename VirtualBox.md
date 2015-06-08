---
layout: default
title: VirtualBox Installation
recipe-attribution: J. Franck
markdown: kramdown
# recipe-attribution-link: http://www.opensourcefood.com/people/HungryJenny/recipes/soft-christmas-gingerbread-cookies
---
# VirtualBox Installation

## Requirements

* **Any** 64bit operating system (unfortunately, 32bit OS not supported).
* Administrative/root access on your laptop.
* *On Linux boxes*, it seems that the distribution's package for the kernel headers (eg., on debian this is linux-headers-amd64) is required.
* ***Unfortuantely, the VM software will require at least 60 Gb of hard drive space to install,*** so please ensure that you have this space on your laptop.  We additionally encourage all participants to install both VM environments before arriving -- even if they are only intended as a backup option.

## Installation Instructions

***Please note:*** It can take several hours to download the needed files below, and the installation and initialization can take 1-1.5 hrs.
We *strongly* recommend that you complete this procedure before attending the conference.

1. Download [Oracle VirtualBox](https://www.virtualbox.org/wiki/Downloads){:target="_blank"} and the [extension pack](http://download.virtualbox.org/virtualbox/4.3.26/Oracle_VM_VirtualBox_Extension_Pack-4.3.26-98988.vbox-extpack).
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
    * On the **Mac** you run `open /Applications/VirtualBox.app ~/Downloads/Oracle_VM_VirtualBox_Extension_Pack-4.3.26-98988.vbox-extpack`
1. Download both Virtual Machines<a name="download"></a>:{% include VM_status.md %}
####The following steps need to be repeated for both VM images:

1. Double-click on the VM image in order to import it.
    * Leave all default settings.
    * *do not* reinitialize the network adapter (MAC)
1. Once the VM has been imported, we recommend that you right click on the VM inside VirtualBox → Settings → System icon → Memory and CPU tabs → Make sure the sliding bars are in the green zone, ideally towards the top.
1. Run the Virtual Machine by clicking "Start"
    * If you get an error about not having enough memory, etc., it's likely because you've set the bars into the red zone (see previous step).
    * If you get an error about having a 32bit processor, you likely need to enable virtualization in your computer's BIOS
        * typically press `<F2>` during bootup to access settings; virtualization might be under a menu setting such as "CPU" or "performance"
        * if this is set up and you are running windows, make sure that hyper-v or xp mode are not enabled on the host.
1. Some notes:
    * Both VMs should automatically log you on, but if you need to know the ACERT User account password, it is `acertrules`.
    * If you changed the memory settings as noted above, you may be asked to "Restart Your Machine" (i.e. the VM).  Do this.
    * Select `<Right Cntrl>-c` to switch to "scaled mode,"
        or `<Right Cntrl>-f` for "full-screen mode."
1. Be sure that you can open Matlab (on both VM's -- to open Matlab on Linux, select Applications → System → Terminal (or xterm) and type `matlab &`
1. When done, if the mouse will not leave the window, press the right `Cntrl` key to release the mouse.
    * Press `<Right Cntrl>-c` to leave "scaled mode."
    * In the VM window, select Machine →  Close → "Save the Machine State" (This will prevent you from having to "log in" again).
        * This is **very important** to make sure that you can load the VM in a timely fashion during the workshops

And beyond... for a useful list of VirtualBox features [check here](http://www.howtogeek.com/171228/10-virtualbox-tricks-and-advanced-features-you-should-know-about/){:target="_blank"}
