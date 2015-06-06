---
layout: default
title: Virtual Box Downloads
attribution: J. Franck
---
# {{ page.title }}

##Some notes as of 3 PM Saturday:
(If it's your first visit, see below first.  This section answers questions and gives updates for people who are having any issues with the download.)

- ***The first upload in the series was broken until 2:50PM on Saturday, when we uploaded a new version of CentOS_final.zip.001*** (Now testing to verify successful download → should be done at about 5pm.)
- The shell script was modified + broken this morning, but should now be fixed for Windows, and may or may not work for Mac.
    - 3PM: made some small updates to script, possibly fixed some issues.  If you have problems, first try to re-download.
    - If you get a syntax error, please run either `dos2unix unpack_linux_vm.sh` or `sed "s/\r//" -i unpack_linux_vm.sh` (this fixes a potential newline issue with the download).
    - We have not yet had the opportunity to test on Mac or Linux -- if you get shell scripting errors, please send them to John, so we can try to fix them.  However, you don't need the shell script to unpack the files.  You can unpack with your tool of choice and , anyways (see below).

## VM Image of Linux System

**Currently diagnosing issues with unpacking script**
*Please download the files, but we are working on fixing the verification script (Sat 1:24pm)*

Now ready for download!  We have uploaded the image files onto [Cornell Box (click here to download)](https://cornell.box.com/s/o47ptx9wr21ui15zbugjizjanz24jk6c){:target="_blank"} as a multipart zip image.

Don't click the file name or the large download icon at the top of the page.  Rather, follow the illustration below to get a direct download:  
![]({{ site.url }}/assets/box_info.png)  
Do this for all the CentOS* files.

To verify the download and help unpack the image you can save [this shell script]({{ site.url }}/assets/unpack_linux_vm.sh) in the same directory.  It will run on windows if you have git (open bash shell and type `bash unpack_linux_vm.sh`; see [NLSL page]({{ site.url }}/Software/NLSL.html) for install instructions), and should run on Mac or Linux (feedback welcome).  If the script doesn't work for you, you can check the md5 sums [manually](http://www.droidviews.com/check-md5sum-of-a-file-on-windows-mac-and-linux/){:target="_blank"}:

 file name  | md5
:----------:|:-----------:
CentOS_final.zip.001" | e48bc26a8717747be1327fa5ccdcfa30
CentOS_final.zip.002 | c6906ad40272c6e4a6fa0d06a3d6f4d2
CentOS_final.zip.003 | e3969d997b73c28856f1644b542212f7
CentOS_final.zip.004 | cafbb83a5032cc750c53adea266f915f
CentOS_final.ova | b436e96942700b2420c057cb702d234f

The final file above is the unpacked result.
If you have any issues with unpacking or installing, please check the md5 sum first!

See the [VirtualBox]({{ site.url }}/VirtualBox.html) page to complete the installation.

## Delay in Upload of Windows Image 

Our upload bandwidth is ***much*** slower than we anticipated, so the Windows will be uploaded on the night of Saturday, June 6<sup>th</sup>.

Please try out the Linux image as soon as you can so there is still time to report back with problems!
