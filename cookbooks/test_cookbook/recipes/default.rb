#
# Cookbook Name:: test_cookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'test_users'

#[ node['test_cookbook']['dir']].each do |path|
directory node[:test_cookbook][:dir] do
	owner 'shonal'
	group 'app'
	mode '0755'
	recursive true
	action :create
end


file node[:test_cookbook][:file] do
	content 'This is test cookbook file created by file content.'
	owner 'shonal'
	mode '0740'
	group 'app'
end

cookbook_file node[:test_cookbook][:cookbook_file] do
	source 'test_cookbook_file.txt'
	owner 'shonal'
	group 'app'
	mode '0755'
	action :create
end

if node[:hostname] == "Web01"
  node_name = "Web"
elsif node[:hostname] == "ubuntu-vm"
  node_name = "Ubuntu"
else
  node_name ="nobody"
end

template node[:test_cookbook][:template_file] do
	source node[:test_cookbook][:template_file_source]
	owner 'shonal'
	group 'app'
	mode '0755'
	variables ({
    :from_node => node_name
  })

end
