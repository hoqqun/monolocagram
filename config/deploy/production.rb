server '13.113.245.51', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/home/vagrant/workspace/id_rsa'