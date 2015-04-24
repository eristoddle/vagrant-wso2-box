class brs{
  file { '/tmp/wso2brs-2.1.0.zip':
    source => '/home/vagrant/wso2brs-2.1.0.zip',
  }

  file { '/opt/wso2brs-2.1.0':
    ensure => directory,
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => 0644,
  }

  exec { 'Extract WSO2 Business Rules Server':
    command => '/usr/bin/unzip /tmp/wso2brs-2.1.0.zip',
    cwd     => '/opt',
    creates => '/opt/wso2brs-2.1.0/bin/wso2server.sh',
    user    => 'vagrant',
    group   => 'vagrant',
    require => File['/tmp/wso2brs-2.1.0.zip', '/opt/wso2brs-2.1.0'],
    timeout => 0,
  }->
  file { '/etc/init.d/wso2brs':
    owner  => root,
    group  => root,
    mode   => 755,
    source => '/vagrant/provision/esb/puppet/modules/brs/files/wso2brs',
  }->
  service { 'wso2brs':
    ensure => true,
    enable => true,
  }
}