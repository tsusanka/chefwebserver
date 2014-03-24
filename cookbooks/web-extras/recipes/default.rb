#
# Installs composer
# to path described in attributes
#

remote_file "#{node['composer']['install_dir']}/composer" do
	source node['composer']['url']
	mode 775
    action :create
end

execute "composer update" do
	command "composer self-update"
end

