---
layout: default
title: Software Installation
attribution: J. Franck
---
**Important Note:**
To participate in the Workshops, you will need to install
[VirtualBox]({{site.baseurl}}/VirtualBox.html) and the pre-built VMs that we will
be supplying. {%include VM_status.md%} 

However, VirtualBox provides a temporary and low-performance solution. 
We **strongly encourage** attendees to additionally install the software on their laptops or a server that they can remotely connect to, as detailed in the instructions below.
This will allow you to continue to use the software after the workshop is over.
#{{page.title}}
{% for p in site.pages where p.url.size > 11 %}{% assign a = (p.url | truncate: 11, '.') %}{% if a == '/Software/.' %}* <a class="page-link" href="{{ p.url | prepend: site.baseurl }}">{{ p.title }}</a>
{% endif %}{% endfor %}
