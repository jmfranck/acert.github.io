---
layout: default
title: Development version of NLSL
attribution: J. Franck
---
# {{ page.title }}, Installation
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
    - Windows: We highly recommend [pythonxy](https://code.google.com/p/pythonxy/wiki/Downloads), which comes with many useful packages installed.  During install:
        - save the file, right click, and run as administrator
        - Under "Choose Components," open "Python", and select (though not in alphabetical order, you can type to find the appropriate package):
            - SymPy
            - ETS 4.4 
        - Install the [mingw plugin](http://sourceforge.net/projects/python-xy/files/plugins/mingw-4.8.1-3.exe/download) (same link as the bottom of the page [here](https://code.google.com/p/pythonxy/wiki/AdditionalPlugins))
    - Linux: install pylab and/or scipy, as well as sympy with your package manager.  You also need to have headers for lapack in your search path.
    - Mac: This is possible, details forthcoming...

<!--
- *pyspecdata*: this is a home-build module that allows for some data processing.

## Pull the code

Open a shell (terminal on Mac/Linux, git bash on Windows), and type
`git clone https://jfranck@bitbucket.org/jfranck/nlsl.git`
then `git checkout python`.

*Note that this page might be updated -- please check back later*

Note that this will allow you to update changes to the code that we upload before the workshop.

This version is only for the workshop, and is a work in progress.
Please do not distribute this code or use it for your research yet.  Rather, see the code at the [ACERT webpage](http://www.acert.cornell.edu/index_files/acert_resources.php), where we will also post links to this code when it is complete.
-->
