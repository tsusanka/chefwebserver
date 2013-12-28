#
# Cookbook Name:: mysql
# Recipe:: default
#

# install mysql server
package "mysql-server" do
	action :install
	notifies :reload, "service[apache2]"
end

# install php's mysql extension
package "php5-mysql" do
	action :install
	notifies :reload, "service[apache2]"
end

# start the service
# make sure the service starts on reboot
service "mysql" do
	action [:start, :enable] # array of parameters; enable says to start at boot
end

# edit default mysql config file with ours found in templates/my.cnf.erb
template "/etc/mysql/my.cnf" do
	notifies :reload, "service[mysql]"
end

# install adminer
# create directory
directory "/var/www/adminer" do
	action :create
end

# download adminer
remote_file "adminer" do
	path "/var/www/adminer/index.php"
	source node['adminer']['url'] # accessing attribute
end

# download skin
remote_file "adminer-skin" do
	path "/var/www/adminer/adminer.css"
	source node['adminer']['skin-url']
end
