class esb{
  file { '/tmp/wso2esb-4.8.1.zip':
    source => '/home/vagrant/wso2esb-4.8.1.zip',
  }

  file { '/opt/wso2esb-4.8.1':
    ensure => directory,
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => 0644,
  }

  exec { 'Extract WSO2 Data Services Server':
    command => '/usr/bin/unzip /tmp/wso2esb-4.8.1.zip',
    cwd     => '/opt',
    creates => '/opt/wso2esb-4.8.1/bin/wso2server.sh',
    user    => 'vagrant',
    group   => 'vagrant',
    require => File['/tmp/wso2esb-4.8.1.zip', '/opt/wso2esb-4.8.1'],
    timeout => 0,
  }->
  file { '/etc/init.d/wso2esb':
    owner  => root,
    group  => root,
    mode   => 755,
    source => '/vagrant/provision/esb/puppet/modules/esb/files/wso2esb',
  }->
  file { '/opt/wso2esb-4.8.1/repository/components/lib/postgresql-9.4-1201.jdbc41.jar':
    owner  => root,
    group  => root,
    mode   => 755,
    source => '/home/vagrant/postgresql-9.4-1201.jdbc41.jar',
  }->
  service { 'wso2esb':
    ensure => true,
    enable => true
  }
}