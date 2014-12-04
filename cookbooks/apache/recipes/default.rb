#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

package "httpd" do
	action :install
end

file "/var/www/html/index.html" do
	action :create
	content "hello"
end

service "httpd" do
	action [:start, :enable]
end

 
