---
layout: default
title: ESR LabVIEW
attribution: C. Altenbach
# recipe-attribution-link: http://www.opensourcefood.com/people/HungryJenny/recipes/soft-christmas-gingerbread-cookies
---
# {{ page.title }} Installation

The following instructions are for the LabVIEW programs developed in the [Hubbel lab](http://www.chemistry.ucla.edu/directory/hubbell-wayne-l),
    and were downloaded and modified from [Dr. Altenbach's site](https://sites.google.com/site/altenbach/labview-programs/why-labview)

-----------------------------------------------------------

## Common requirements

### Operating system

-   **Operating System** requirement is the same as listed for the
    LabVIEW run-time engine.*<span> </span>*(*Windows 8; Windows 7;
    Windows Vista; Windows XP (SP3) 32-bit; Windows Server 2008 R2
    64-bit; Windows Server 2003 R2 32-bit*)
-   Administrator privileges during installation.
-   **Even if your OS is 64bit, all programs require the standard 32 bit
    LabVIEW Runtime engine**, freely available for download from the
    National Instruments Website at the link above.
-   See the [general
    FAQ](https://sites.google.com/site/altenbach/faq) for common
    questions.

### Hardware

-   There are very few computer hardware limitations and programs have
    been successfully tested from simple netbooks (atom processor) to
    advanced multiprocessors system (e.g. Dual Xeon with 32 virtual
    cores)
-   **Exceptions:** Very old processors (e.g. Pentium III, Athlon XP)
    lack SSE2/SSE3 support and are not able to run the software. (Check
    the [wikipedia entry](http://en.wikipedia.org/wiki/SSE3) for details
    on SSE3 and a complete list of supported CPUs). The installation
    will probably succeed, but the programs will not be able to run.

## Installation instructions

1.  Download and run the [LabVIEW 2013 SP1 Run-time Engine (32bit Standard RTE)](http://www.ni.com/download/labview-run-time-engine-2013-sp1/4539/en/) (if not installed already). It will unzip to a temporary
    location. Accept the defaults. 
2.  After unzipping, setup will start automatically.
3.  For best results, use the defaults for installation location.
4.  The run-time installer may give you a choice of optional modules.
    **All you need is the run-time engine (first item in the list)**,
    you can uncheck all other options (NI Variable Engine, Datasocket,
    Deployable license, USI).
5.  Reboot the computer if asked.
6.  Optionally delete the temporary folder and zip file. They are no
    longer needed.
7.  Now run the installer of the desired LabVIEW program obtained from
    my [downloads page](http://www.biochemistry.ucla.edu/biochem/Faculty/Hubbell/software.html). 
8.  Go to “Start…All Programs…EPR Programs” (or equivalent) and run the
    desired program.

## Uninstall

To uninstall any of my programs, go to the control panel and select “add
or remove Programs” (or equivalent), find the program in the list, and
follow the usual procedure.

To uninstall the LabVIEW 2013 SP1 runtime engine (optional), repeat the
above but select “National Instruments Software” and click
“Change/Remove”. You will get a list of all installed National
Instrument software. Select NI LabVIEW Runtime 2013 SP1. and
click **Remove**.

[LabVIEW™](http://www.ni.com/labview/) Is a trademark of National
Instruments Corporation.
