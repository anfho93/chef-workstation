package 'Install packages' do
  package_name Array['tree', 'ntp', 'nano', 'git', 'emacs']
  action :install
end

file '/etc/motd' do
  content 'This server is property of Andres Herrera'
  owner 'root'
  group 'root'
end

service 'ntpd' do 
  action [ :enable, :start]
end
