#
# Cookbook Name:: apache
# Recipe:: default
#

# install php
package "php5" do
	action :install
	notifies :restart, "service[apache2]"
end

# edit default php.ini config file with ours found in templates/default/php.ini.erb
template "/etc/php5/apache2/php.ini" do
	notifies :reload, "service[apache2]"
end
