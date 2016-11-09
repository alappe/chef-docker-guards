docker_service 'default' do
 action [:create, :start]
 http_proxy 'something special'
 https_proxy 'something special'
 only_if { false }
end

docker_service 'default' do
  action [:create, :start]
  not_if { false }
end
