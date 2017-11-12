package 'nginx'
template '/dest' do 
  source 'test.erb'
end
service 'nginx' do
  action :nothing	
end
template '/etc/nginx/conf.d/mysite.conf' do 
	source 'mysite.conf.erb'
	notifies :restart, 'service[nginx]' 
end
