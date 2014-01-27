#
# Cookbook Name:: apache
# Recipe:: default
#

# install apache
package "apache2" do
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
template "/etc/apache2/sites-available/000-default.conf" do
	notifies :restart, "service[apache2]"
end

# install json extension, which has been removed in some extensions due to license conflict
execute "php5-json" do
	command "sudo apt-get install php5-json"
	notifies :restart, "service[apache2]"
end
