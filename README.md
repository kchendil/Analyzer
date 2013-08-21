Description
===========

Installs NetIQ Analyzer

Requirements
============

Platform:

* SLES 11 SP2


The following Opscode cookbooks are dependencies:



Attributes
==========

* `node["analyzer"]["analyzer_install_loc"]` - The Analyzer install location, default `/opt/novell/idm/Analyzer/`.
* `node["analyzer"]["analyzer_build_loc"]` - The Analyzer build location, default `/home/vagrant/IDM402AE/test/products/Analyzer/install`.
* `node["analyzer"]["jre_loc"]` - The JRE location, default `/root/idm/jre`.


Usage
=====



License and Author
==================

Author:: Chendil Kumar Manoharan(<kchendil@netiq.com>)

Copyright:: 2010-2013, NetIQ, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
