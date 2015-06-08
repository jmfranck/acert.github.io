---
layout: default
title: Software
attribution: J. Franck
---
#{{page.title}}#

##Read this first:##

You will need to install
[VirtualBox]({{site.baseurl}}/VirtualBox.html) and the pre-built Virtual Machines (VMs) that we will
be supplying.
**It takes 2-4 hrs to load the VM images, so please do this as soon as possible.**
This VM is a bundle consisting of a complete operating system with all conference software pre-installed.
{%include VM_status.md%} 

We expect that everyone will come to the workshop with both VMs fully functional on their laptop, so please let us know ASAP if you experience any trouble.
(If you get in trouble, we will likely be offering an on-site solutions, but we will only be able to accommodate a very limited number of people this way, and it will likely cost a surcharge.)

VirtualBox provides a temporary and low-performance solution. 
We **strongly encourage** attendees to **additionally** install the software on their laptops or a server that they can remotely connect to, as detailed in the instructions below.
This will allow you to continue to use the software after the workshop is over.

##To install on your Desktop:

{% for p in site.pages where p.url.size > 11 %}{% assign a = (p.url | truncate: 11, '.') %}{% if a == '/Software/.' %}* <a class="page-link" href="{{ p.url | prepend: site.baseurl }}">{{ p.title }}</a>
{% endif %}{% endfor %}

## OS Support:

This table gives a quick reference for which software packages support which operating systems.
If your operating system is supported, we strongly recommend that you install the software natively (note that instructions above are still being posted and may not be complete until Monday).
If your operating system is not supported, you will need to run the software through the [VM]({{site.baseurl}}/VirtualBox.html).

Software package | Windows Support | Linux Support | Mac Support | Runs without Matlab|
----------------:|:---------------:|:-------------:|:-----------:|:------------------:|
EasySpin         | Y               | Y             | Y           |                    |
EPR LabVIEW Programs | Y               |               |             | Y                  |
Spinach         | Y               | Y             | Y           |                    |
NLSL         | Y               | Y             | ?           | Y                  |
Fajer lab Software  |                 | Y             | Y           |                    |
SALEM |                 | Y             | ?           | Y                  |
SPIDYAN  | Y               | Y             | Y           |                    |
MMM  | Y               | ?             | ?           |                    |


