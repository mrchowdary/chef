#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (C) 2014
#
#
#
service 'httpd' do
     action [:disable, :stop]
end

package 'httpd' do
	action :remove
end
