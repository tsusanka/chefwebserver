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
