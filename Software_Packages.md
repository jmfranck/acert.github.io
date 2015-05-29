---
layout: default
title: Software Installation
attribution: J. Franck
---
#{{page.title}}#

##Read this first##

You will need to install
[VirtualBox]({{site.baseurl}}/VirtualBox.html) and the pre-built Virtual Machines (VMs) that we will
be supplying.
**It takes 2-4 hrs to load the VM images, so please do this as soon as the VMs become available (scheduled for June 5<sup>th</sup>).**
This VM is a complete bundle consisting of a complete operating system will all conference software pre-installed.
{%include VM_status.md%} 

If you get in trouble, we will likely be offering an on-site solutions, but we will only be able to accommodate a very limited number of people this way, and it will likely cost a surcharge.

However, VirtualBox provides a temporary and low-performance solution. 
We **strongly encourage** attendees to **additionally** install the software on their laptops or a server that they can remotely connect to, as detailed in the instructions below.
This will allow you to continue to use the software after the workshop is over.

##To install on your Desktop:

{% for p in site.pages where p.url.size > 11 %}{% assign a = (p.url | truncate: 11, '.') %}{% if a == '/Software/.' %}* <a class="page-link" href="{{ p.url | prepend: site.baseurl }}">{{ p.title }}</a>
{% endif %}{% endfor %}
