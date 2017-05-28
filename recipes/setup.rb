package 'tree' do
 action :install
end

package 'ntp' do
 action :install
end

package 'git' do
 action :install
end
file '/etc/motd' do
 content 'This server is Mohans property'
 action :create
end

service 'ntpd' do
 action [ :enable, :start ]
end
