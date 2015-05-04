---
layout: default
title: EasySpin Installation
recipe-attribution: J. Franck
# recipe-attribution-link: http://www.opensourcefood.com/people/HungryJenny/recipes/soft-christmas-gingerbread-cookies
---
## VirtualBox Installation
### Requirements
* **Any** 64bit operating system (unfortunately, 32bit OS not supported).
* Administrative/root access on your laptop.

### Installation Instructions

1. Download [Oracle VirtualBox](https://www.virtualbox.org/wiki/Downloads) and the extension (same page).
1. Install VirtualBox
    1. Administrative/root access is required.
    1. Be sure to allow it to associate file extensions.
1. Install extension pack (simply double-click if running as administrator).
    1. If you are on Windows and *not running as an admin*:
        1. Type `Virtual Box` into start menu/screen → right click → properties.
        1. Note location of the **extension pack download** (e.g. `C:\Users\jmf356\Downloads`).
        1. Note the location of the **program executable** (e.g. `C:\Program Files\Oracle\VirtualBox\VirtualBox.exe`).
        1. Type `cmd` into start menu/screen: right click → run as administrator
        1. Type **program executable** followed by full path to (e.g. `C:\Program Files\Oracle\VirtualBox\VirtualBox.exe` `C:\Users\jmf356\Downloads\Oracle_VM_VirtualBox_Extension_Pack-4.3.26-98988.vbox-extpack`)
1. Download the Virtual Machine [(VM) image from here]().
1. Double-click on the VM image in order to import it.
    1. Leave all default settings.
1. Run the Virtual Machine by clicking "Start"
    1. Select "Don't show this message again" and click OK.
    1. Select `<Right Cntrl>-f` to switch to "full screen mode".
1. When done, if the mouse will not leave the window, press the right `Cntrl` key to release the mouse.
### Additional software installed
1. gvim
