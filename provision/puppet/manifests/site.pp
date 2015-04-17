import 'nodes.pp'

Package {
	allow_virtual => false
}

file { '/home/vagrant/.bashrc':
	source => '/vagrant/provision/puppet/files/bashrc',
}