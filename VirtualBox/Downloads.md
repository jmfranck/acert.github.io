---
layout: default
title: Virtual Box Downloads
attribution: J. Franck
---
# {{ page.title }}

## VM Image of Linux System

Now ready for download!  We have uploaded the image files onto [Cornell Box (click here to download)](https://cornell.box.com/s/o47ptx9wr21ui15zbugjizjanz24jk6c) as a multipart zip image.

Don't click the file name or the large download icon at the top of the page.  Rather, follow the illustration below to get a direct download:  
![]({{ site.url }}/assets/box_info.png)  
Do this for all the CentOS* files.

To verify the download and help unpack the image you can save [this shell script]({{ site.url }}/assets/unpack_linux_vm.sh) in the same directory.  It will run on windows if you have git (open bash shell and type `bash unpack_linux_vm.sh`; see [NLSL page]({{ site.url }}/Software/NLSL.html) for install instructions), and should run on Mac or Linux (feeback welcome).  If the script doesn't work for you, you can check the md5 sums manually:

file name  | md5
----------:|:-----------
CentOS_final.zip.001" | e48bc26a8717747be1327fa5ccdcfa30
CentOS_final.zip.002 | c6906ad40272c6e4a6fa0d06a3d6f4d2
CentOS_final.zip.003 | e3969d997b73c28856f1644b542212f7
CentOS_final.zip.004 | cafbb83a5032cc750c53adea266f915f
CentOS_final.ova | b436e96942700b2420c057cb702d234f

The final file above is the unpacked result.
If you have any issues with unpacking or installing, please check the md5 sum first!

See the [VirtualBox]({{ site.url }}/VirtualBox.html) page to complete the installation.

*12:30pm Saturday -- updated shell script, which had some problems → verified install of unpacked ova image on Windows*

## Delay in Upload of Windows Image 

Our upload bandwidth is ***much*** slower than we anticipated, so the Windows will be uploaded on the night of Saturday, June 6<sup>th</sup>.

Please try out the Linux image as soon as you can so there is still time to report back with problems!
