---
layout: default
title: EasySpin
attribution: S. Stoll
# recipe-attribution-link: http://www.opensourcefood.com/people/HungryJenny/recipes/soft-christmas-gingerbread-cookies
---
# {{ page.title }} Installation

Follow the instructions below, which are copied from [the EasySpin homepage](http://easyspin.org/installation.html).

-----------------------------------------------------------

## Download and requirements
*This page was updated on Sat Jun 6<sup>th</sup> to reflect a software update*

*EasySpin* comes in a single zip file, containing all toolbox functions
and the full documentation.

-   **EasySpin 5.0.0 beta-686** -
    [[download]](http://easyspin.org/es50b686.zip)

*EasySpin* requires MATLAB 7.5 (R2007b) or later on either Windows,
Linux or Mac. Beyond a basic MATLAB installation, no additional MATLAB
toolboxes are needed to run EasySpin.

## Installation

1.  **Download and install support software**  
     A small but critical part of *EasySpin* is not written in MATLAB,
    but in C. In order to compile and run this part, some support
    software has to be installed, depending on the platform.
    -   Windows, 64-bit: Download and install [Microsoft Visual C++ 2010
        Redistributable Package
        (x64)](http://www.microsoft.com/downloads/en/details.aspx?familyid=BD512D9E-43C8-4655-81BF-9350143D5867).
    -   Windows, 32-bit: Skip this step.
    -   Mac OS X: Skip this step.
    -   Linux: Skip this step.

2.  **Download and unpack EasySpin**  
     Download the *EasySpin* zip file and unpack it to a folder, e.g.,
    `C:\` or `/var/myfiles/`. Once unpacked, *EasySpin* is contained in
    a subfolder of `C:\` (of `/var/myfiles/` or whatever directory you
    chose) which in turn contains various subfolders:
    -   `easyspin` - all the toolbox functions.
    -   `documentation` - documentation, entry point is `index.html`.
    -   `examples` - all examples, grouped into subdirectories.

3.  **Tell MATLAB about EasySpin**  
    -   Launch MATLAB and go to the Home → Set Path (or File → Set
        Path... in versions prior to R2012b).
    -   Remove any folders containing older *EasySpin* installations
        from the MATLAB search path.
    -   Add the *EasySpin* subfolder `easyspin` to the MATLAB search
        path by clicking on "Add Folder...", selecting the `easyspin`
        subfolder in your *EasySpin* directory.
    -   Click "Save".

4.  **Set up EasySpin**  
    -   In MATLAB, type `easyspin` at the command prompt.
    -   Possibly you are asked to select a C compiler. In that case,
        choose Lcc (Windows 32bit) or gcc (Linux, Mac).
    -   The final output in the command window should look like

            >> easyspin
            ==================================================================
              Release:          4.5.5 (2014-01-09)
              Expiry date:      30-Jun-2015
              Folder:           /usr/local/EasySpin/easyspin
              MATLAB version:   8.5.0.197613 (R2015a)
              Platform:         Linux 2.6.32-504.16.2.el6.x86_64
              mex-files:        mexa64, ok
              System date:      04-May-2015 16:44:17
              Temp dir:         /tmp/
            ==================================================================

        - *[for ACERT workshop] Note that on Linux, we get the additional subsequent line, which does not indicate any real problem:*

            `The EasySpin folder is not in MATLAB's search path. Please add it.`


5.  **Documentation**  
     To view the documentation, point your web browser to
    `documentation/index.html` in your *EasySpin* installation directory
    and bookmark that page. In addition, *EasySpin* documentation is
    also accessible via the MATLAB help browser, where it is listed
    together with other installed toolboxes (up to R2012a).

## License

1.  You may download and use *EasySpin* free of charge and without any
    restrictions.
2.  You may copy and distribute verbatim copies of *EasySpin*.
3.  You may not rent or sell any part of *EasySpin*.
4.  You may not use or modify *EasySpin* or a part of it for other
    software which is not freely available at no cost.
5.  You may not reverse engineer, decompile or disassemble *EasySpin*.
6.  *EasySpin* comes without warranty of any kind.
7.  If you use results obtained with the help of *EasySpin* in any
    scientific publication, [cite](http://easyspin.org/references.html)
    the appropriate publication.

