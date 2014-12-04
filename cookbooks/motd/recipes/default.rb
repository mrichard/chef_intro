#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
template "/etc/motd" do
	action :create
	source "motd.erb"
	content "Property of SAKS"
	mode "0644"
	owner "root"
	group "root"
end