name             "analyzer"
maintainer       "NetIQ."
maintainer_email "kchendil@netiq.com"
license          "Apache 2.0"
description      "Installs NetIQ IDM Analyzer"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"

%w{ suse}.each do |os|
  supports os
end

