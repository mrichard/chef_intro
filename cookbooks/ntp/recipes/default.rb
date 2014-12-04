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
	notifies :restart, "service[ntpd]"
	action :create
	source "ntp.erb"
	mode "0644"
	owner "root"
	group "root"
end

service "ntpd" do
	action [:start, :enable]
end 