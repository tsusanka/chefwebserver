#
# Cookbook Name:: apache
# Recipe:: default
#

# install apache
package "apache2" do
	package_name "apache2"
	action :install
end

# start the service
# make sure the service starts on reboot
service "apache2" do
	action [:start, :enable] # array of parameters; enable says to start at boot
end

# enable mod rewrite
execute "modrewrite" do
	command "sudo a2enmod rewrite"
	notifies :restart, "service[apache2]"
end

# edit the default site settings
template "/etc/apache2/sites-available/default" do
	notifies :restart, "service[apache2]"
end
