#
# Cookbook Name:: system
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash 'download_system' do
  cwd "/tmp/"
  code <<-EOH
    wget 'https://github.com/statsd/system/releases/download/v0.2.0/system'
    chmod +x system
    mv ./system /usr/local/bin/ 
  EOH
  not_if { ::File.exists?("/usr/local/bin/system") }
end

cookbook_file '/etc/init/system.conf' do
  source 'system.conf'
  not_if { ::File.exist?('/etc/init/system.conf') && !platform?('debian') }
  notifies :start, 'service[system]', :delayed
end

service 'system' do
  provider Chef::Provider::Service::Upstart
  supports :status => true,:start => true, :stop => true
  action [ :enable, :start ]
end
