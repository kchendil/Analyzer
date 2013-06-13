#
# Cookbook Name:: nags
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

analyzer_install_loc=node['analyzer']['analyzer_install_loc']
analyzer_locale=node['analyzer']['analyzer_locale']
analyzer_build_loc=node['analyzer']['analyzer_build_loc']
jre_loc=node['analyzer']['jre_loc']



template "/tmp/analyzer_install.properties" do
  source "analyzer_install.properties.erb"
  owner "root" 
  mode "0644"  
end


execute "Install Analyzer" do
  command " \"#{analyzer_build_loc}\" -DIA_USER_JRE_HOME=\"#{jre_loc}\" -i silent -f \"/tmp/analyzer_install.properties\" "
  creates "/opt/novell/idm/Analyzer/Analyzer"
  not_if { ::File.exists?("/opt/novell/idm/Analyzer/Analyzer")}
  action :run
end




