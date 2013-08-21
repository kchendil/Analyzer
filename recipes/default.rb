#
# Cookbook Name:: analyzer
# Recipe:: default
#
# Copyright 2013, NetIQ
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# default tomcat attributes

#analyzer_install_loc=node['analyzer']['analyzer_install_loc']
#analyzer_locale=node['analyzer']['analyzer_locale']
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




