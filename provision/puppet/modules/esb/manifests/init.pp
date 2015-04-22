class esb{
  file { '/tmp/wso2esb-4.7.0.zip':
    source => '/home/vagrant/wso2esb-4.7.0.zip',
  }

  file { '/opt/wso2esb-4.7.0':
    ensure => directory,
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => 0644,
  }

  exec { 'Extract WSO2 Data Services Server':
    command => '/usr/bin/unzip /tmp/wso2esb-4.7.0.zip',
    cwd     => '/opt',
    creates => '/opt/wso2esb-4.7.0/bin/wso2server.sh',
    user    => 'vagrant',
    group   => 'vagrant',
    require => File['/tmp/wso2esb-4.7.0.zip', '/opt/wso2esb-4.7.0'],
    timeout => 0,
  }->
  file { '/etc/init.d/wso2esb':
    owner  => root,
    group  => root,
    mode   => 755,
    source => '/vagrant/provision/puppet/modules/esb/files/wso2esb',
  }->
  service { 'wso2esb':
    ensure => true,
    enable => true
  }
}