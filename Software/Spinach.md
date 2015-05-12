---
layout: default
title: Spinach
attribution: Ilya Kuprov, Hannah J. Hogben, Luke J. Edwards, Matthew Krzystyniak,Peter J. Hore, Gareth T.P. Charnock, and Dmitry Savostyanov

---
# {{ page.title }} Installation

The following instructions are for the Spinach programs developed by Ilya Kuprov, 
Hannah J. Hogben, Luke J. Edwards, Matthew Krzystyniak, Peter J. Hore, 
Gareth T.P. Charnock, and Dmitry Savostyanov, and were downloaded and 
modified from [Spinach homepage](http://spindynamics.org/Spinach.php).

-----------------------------------------------------------

## Download and requirements
*Spinach* comes in a single zip file, containing all toolbox functions
and the full documentation.

-   **Spinach 1.5.2440** -
    [[download]](http://spindynamics.org/documents/spinach_1.5.2440.zip)
-   The minimum supported version of Matlab is 2014a (64-bit version) with Parallel 
    Computing Toolbox and at least 8 GB of RAM. Spinach supports large-scale 
	(128+ cores) parallel deployments using Matlab Distributed Computing Server. 
	Protein functionality requires at least 256 GB of RAM
-   Spinach essentially requires Matlab Distributed Computing Toolbox. 
    There is no way to make it work if MDCT is not installed. 
	Some functions require Optimization Toolbox

## Installation instructions
    
1.  **Download and unpack Spinach**  
    Download the *Spinach 1.5.2440* zip file 
	(http://spindynamics.org/documents/spinach_1.5.2440.zip)
	and unpack it to a folder, e.g.,`C:\` or `/var/myfiles/`. 
	Once unpacked, *Spinach* is contained in
    a subfolder of `C:\` (of `/var/myfiles/` or whatever directory you
    chose) which in turn contains various subfolders:
    -   `docs` - documentation, entry point is `index.html`.
    -   `etc` - some additional toolbox functions.
    -   `examples` - all examples, grouped into subdirectories.
    -   `experiments` - all toolbox experiments that can be simulated (cosy etc...).
    -   `kernel` - all the background toolbox functions.
2.  **Tell MATLAB about Spinach**  
    -   Launch MATLAB and go to the Home → Set Path 
    -   Remove any folders containing older *Spinach* installations
        from the MATLAB search path.
    -   Add the *Spinach* folder `spinach_1.5.2440` to the MATLAB search
        path by clicking on "Add with subfolders...", selecting the `spinach_1.5.2440`
        subfolder in your *Spinach* directory.
    -   Click "Save".
	- IMPORTANT: You may need to allow write access to \toolbox\local\pathdef.m 
	file in your Matlab root directory in order to be able to save the updated 
	path file.

## Additional instructions

1. The best way to get started is to look through the code in the \examples directory. 
   Detailed documentation, including published papers, is available in the \docs directory.
   Clicking on any Spinach function in the example files and pressing `Ctrl-D` (Windows) or 
   `Shift-Cmd-D` (Mac) brings up the function documentation (it is usually in the function 
   header) - all functions are extensively documented, it is definitely a good idea to look
   inside, even if you are not an expert in Matlab programming.
2. It is essential that you understand the factors that influence the choice of the basis
   set in Spinach. A basis set that is too small would produce inaccurate results. Please
   read [our paper](http://link.aip.org/link/doi/10.1063/1.3624564){:target="_blank"}.
3. With any questions and suggestions, please use [our forum](http://spindynamics.org/forum/){:target="_blank"}
   and the [Spin Dynamics course](http://spindynamics.org/support.php){:target="_blank"}. The course has, at
   the time of writing, over 30 hours of high-definition video and over 300 pages of high-
   quality pdf handouts.
4. If you find Spinach useful, please cite the algorithm papers (see the \docs directory),
   that would ensure that we get the grants to continue Spinach development. Our last grant
   application wasn't funded and we are running on a shoestring - your support is essential.
5. A beta version of the graphical user interface (Windows operating systems) can be downloaded [here](http://spindynamics.org/Spinach-GUI.php){:target="_blank"}.

