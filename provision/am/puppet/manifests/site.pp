import 'nodes.pp'

Package {
	allow_virtual => false
}

file { '/home/vagrant/.bashrc':
	source => '/vagrant/provision/am/puppet/files/bashrc',
}