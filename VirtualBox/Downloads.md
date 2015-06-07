---
layout: default
title: Virtual Box Downloads
attribution: J. Franck
---
# {{ page.title }}

## VM Image of Linux System

Now ready for download!  We have uploaded the image files onto [Cornell Box (click here to download)](https://cornell.box.com/s/o47ptx9wr21ui15zbugjizjanz24jk6c){:target="_blank"} as a multipart zip image.

Don't click the file name or the large download icon at the top of the page.  Rather, follow the illustration below to get a direct download:  
![]({{ site.url }}/assets/box_info.png)  
Do this for all the CentOS* files.

The files were packed, and will unpack trivially with 7-zip on windows.
For Mac, people have given valuable feedback ([see section below](#Macnotes)).
For Windows, if you have git (one of the dependencies for the [desktop NLSL install]({{ site.url }}/Software/NLSL.html)), it's worth it to give the shell script, described next, a quick try; we would expect it to work on most Linux systems, as well.

**If you run into any trouble unpacking,** the first thing you need to do is to check the md5 checksums at every step; you can do this either manually, or with the script that we provide (described next).

Once you have unpacked, 
see the [VirtualBox]({{ site.url }}/VirtualBox.html) page to complete the installation.

### Automated script and checking the checksums

To verify the download and help unpack the image you can save [this shell script]({{ site.url }}/assets/unpack_linux_vm.sh) in the same directory.  It will run on windows if you have git (open bash shell and type `bash unpack_linux_vm.sh`; see [NLSL page]({{ site.url }}/Software/NLSL.html) for git install instructions), and should run on Mac or Linux (feedback welcome); it does require the command `md5` *or* `md5sum` as well as either `7z` (the 7-zip command line) or `zip` *and* `unzip`.

Please keep in mind that the script is intended to be helpful, but not absolutely required, so if it gives you trouble, don't worry too much about it!
If the script doesn't work for you, you can check the md5 sums [manually (this is a link for further info).](http://www.droidviews.com/check-md5sum-of-a-file-on-windows-mac-and-linux/){:target="_blank"}:

 file name  | md5
:----------:|:-----------:
CentOS_final.zip.001 | e48bc26a8717747be1327fa5ccdcfa30
CentOS_final.zip.002 | c6906ad40272c6e4a6fa0d06a3d6f4d2
CentOS_final.zip.003 | e3969d997b73c28856f1644b542212f7
CentOS_final.zip.004 | cafbb83a5032cc750c53adea266f915f
CentOS_final.ova | b436e96942700b2420c057cb702d234f

The final file above is the unpacked result.
If you have any issues with unpacking or installing, please check the md5 sum first!

### Special notes for the Mac
<a name="Macnotes"></a>

The multi-part zip can be tricky, and to run the script, you would need an `md5` or `md5sum` command as well as both an `unzip` and `zip` command.

Feed-back is welcome, since we do not have a Mac but would like to get the script running on a Mac.
So far, people have had success with:

- `cat CentOS_final.zip.0* > CentOS_final_combined.zip`, followed by running the TheUnarchiver on the result.
    - The `unzip` command will *not* work by itself.  You would first have to run `zip -FF` on the concatenated file (note that no one has tried this yett).
- BetterZip → add all the files, and double-click on the first. 


## Delay in Upload of Windows Image 

We now plan to upload the Windows VM after most people have successfully installed the Linux VM, and we have worked out all the download- and install-related issues: likely on the evening of Sunday, June 7<sup>th</sup>.  Please try out the Linux image as soon as possible!

##Some notes as of 4:30 PM Saturday:
(This section answers questions and gives updates for people who are having any issues with the download.)

- ***The first upload in the series was broken until 2:50PM on Saturday, when we uploaded a new version of CentOS_final.zip.001*** A couple people have now confirmed that they can download and unpack everything correctly → thanks to them for helping work out the initial kinks!
- The most recent version of the shell script was uploaded on 4:40pm on Saturday -- get this version if you are having any trouble, then:
    - If you get a syntax error, please run either `dos2unix unpack_linux_vm.sh` or, if you don't have dos2unix, `sed "s/\r//" -i unpack_linux_vm.sh` (this fixes a potential newline issue with the download).
    - On Mac, the script *should* work if you have a command-line tool for checking the md5 checksum and you have *both* the `zip` and `unzip` command-line tools.  Unfortunately, this seems not to be the case for most people, so we have not had a successful test of the script yet.
        - If you get shell scripting errors (after the fix above), please send them to John, so we can try to fix them.
        - However, you don't need the shell script to unpack the files.  You can unpack with your tool of choice and (see notes above).

