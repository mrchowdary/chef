#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (C) 2014
#
#
#
package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

node['apache']['sites'].each do | sitename, data |
	document_root = "/content/sites/#{sitename}"
	directory document_root do
		mode '0755'
		recursive true
	end	
	if node['hostname'] == 'sbchowdary-gmail-com5'
		template '/var/www/html/index.html' do
		  source 'index.html.erb'
		end
		template '/var/www/html/noautoattributes.html' do
			source 'autoattributes.html.erb'
		end

	elsif node['hostname'] == 'sbchowdary-gmail-com6'
		template '/var/www/html/index.html' do
		  source 'index.html.erb'
		end
		template '/var/www/html/autoattributes.html' do
			source 'autoattributes.html.erb'
		end
	end
end

include_recipe "php::default"

execute "rm /home/user/welcome.com" do
	only_if do
		File.exists?("/home/user/welcome.com")
	end
end

#template '/var/www/html/index.html' do
#  source 'index.html.erb'
#end

#template '/var/www/html/autoattributes.html' do
#	source 'autoattributes.html.erb'
#end


service 'iptables' do
 action :stop
end
