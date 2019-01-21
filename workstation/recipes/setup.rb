apt_update 'update'
package 'tree' do
   action :install
end

package 'ntp'
node['ipaddress']
node['memory']['total']
template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'sandeeplala'
)
  action :create
end
service 'ntp' do
  action [ :enable, :start]
end
package 'git' do
  action :install
end
