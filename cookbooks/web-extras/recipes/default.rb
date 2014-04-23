#
# Installs some extra libraries for web development
#

#
# composer
#
remote_file "#{node['composer']['dir']}/composer" do
	source node['composer']['url']
	mode 775
    action :create
end
