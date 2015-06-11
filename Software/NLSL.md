---
layout: default
title: Development version of NLSL
attribution: J. Franck
---
# {{ page.title }}, Installation

If you downloaded NLSL earlier, please use [this update script]({{ site.url }}/assets/update_nlsl.sh)

This page will be updated → for now, please install the requirements.

## Install requirements

For the specific examples we will present, we will use both code development tools a Python bundle that gives roughly similar functionality to Matlab, so a few dependencies need to be installed:

- *git*
    - Windows: Download [the most recent verion of msysgit](https://github.com/msysgit/msysgit/releases/download/Git-1.9.5-preview20150319/Git-1.9.5-preview20150319.exe)
        - Select the defaults, but *uncheck* "Windows Explorer Integration" (or if you want this, we recommend only "git bash here")
        - Select the defaults: "use git from bash only" and "checkout windows-style, commit windows-style"
    - Mac: Part of XCode
    - Linux: part of most distributions
- *python*
    - Windows: If you have not previously used Python, we highly recommend [pythonxy](https://code.google.com/p/pythonxy/wiki/Downloads), which comes with many useful packages installed.  (One caveat: if you already have a python distribution, we do not recommend installing another -- see the note below.) During install:
        - save the file, right click, and run as administrator
        - Under "Choose Components," open "Python", and select (though not in alphabetical order, you can type to find the appropriate package):
            - SymPy
            - ETS 4.4 
            - VTK
        - Install the [mingw plugin](http://sourceforge.net/projects/python-xy/files/plugins/mingw-4.8.1-3.exe/download) (same link as the bottom of the page [here](https://code.google.com/p/pythonxy/wiki/AdditionalPlugins))
        - *(Note for if you already have a python distribution:)* Rather than installing pythonxy from scratch, check that you have the following packages installed: pylab, numpy, sympy, pytabels, matplotlib, PyQt4, ipython notebook, as well as support for mingw. 
    - Linux: install the packages noted on the last line (likely with your distribution's package manager).  You also need to have headers for lapack in your search path.
        - testing this on a linux box, we also have to install `python-dev` and `liblapack-dev` packages from the linux distribution, which contain the build headers and the lapack libraries, respectively.
    - Mac: Use XCode with macports to achieve a similar installation to the Linux case.

## Pull the code

Use
[this shell script]({{ site.url }}/assets/install_nlsl.sh)
to automatically download the code.

Run the script, either by changing to the directory it's in and typing `bash install_nlsl.sh`, or by double-clicking on it.
It will ask you to hit enter a bunch of times so you can see what's happening.
The script should, in principle work on a Mac if you have all the correct python packages installed, but we have not had the opportunity to test it.

You can run two tests:
- Go to the `workshop_examples` subdirectory inside your home directory.  Run the two python scripts, either by double-clicking or by typing `python `filename`.py` from within the shell (after `cd ~/workshop_examples`).
- `cd ~/nlsl_1D` and then `python runexample.py 1`

Note that we will be discussing very recent developments and will likely be pushing updates to the examples.
For right now, when you run the examples, a plot is good, while an ImportError, *etc.,* means that your installation was not good.


<!--
- *pyspecdata*: this is a home-build module that allows for some data processing.


Open a shell (terminal on Mac/Linux, git bash on Windows), and type
`git clone https://jfranck@bitbucket.org/jfranck/nlsl.git`
then `git checkout python`.

*Note that this page might be updated -- please check back later*

Note that this will allow you to update changes to the code that we upload before the workshop.

This version is only for the workshop, and is a work in progress.
Please do not distribute this code or use it for your research yet.  Rather, see the code at the [ACERT webpage](http://www.acert.cornell.edu/index_files/acert_resources.php), where we will also post links to this code when it is complete.
-->
