#
# Cookbook Name:: apache
# Recipe:: default
#

# install php
package "php5" do
	action :install
	notifies :restart, "service[apache2]"
end
