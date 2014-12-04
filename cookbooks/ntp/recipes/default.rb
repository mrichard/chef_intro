#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

package "ntp" do
  action :install
end

package "ntpdate" do
  action :install
end

template "/etc/ntp.conf" do
	action :create
	source "motd.erb"
	content "Property of SAKS"
	mode "0644"
	owner "root"
	group "root"
end
