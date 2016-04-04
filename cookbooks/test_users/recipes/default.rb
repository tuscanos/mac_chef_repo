#
# Cookbook Name:: test_users
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group 'app' do
  action :create
  gid '800'
  group_name 'app'
end

user 'shonal' do
  comment 'Shonal Machado'
  uid '12345'
  gid 'app'
  home '/home/shonal'
  shell '/bin/bash'
  manage_home true
#  action :create
  password '$1$9NAt3Win$u8Zz3iEWj7tsGhBHLJvux1'
end
