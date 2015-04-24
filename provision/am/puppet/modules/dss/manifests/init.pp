class dss{
  file { '/tmp/wso2dss-3.2.2.zip':
    source => '/home/vagrant/wso2dss-3.2.2.zip',
  }

  file { '/opt/wso2dss-3.2.2':
    ensure => directory,
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => 0644,
  }

  exec { 'Extract WSO2 Data Services Server':
    command => '/usr/bin/unzip /tmp/wso2dss-3.2.2.zip',
    cwd     => '/opt',
    creates => '/opt/wso2dss-3.2.2/bin/wso2server.sh',
    user    => 'vagrant',
    group   => 'vagrant',
    require => File['/tmp/wso2dss-3.2.2.zip', '/opt/wso2dss-3.2.2'],
    timeout => 0,
  }->
  file { '/etc/init.d/wso2dss':
    owner  => root,
    group  => root,
    mode   => 755,
    source => '/vagrant/provision/am/puppet/modules/dss/files/wso2dss',
  }->
  service { 'wso2dss':
    ensure => true,
    enable => true,
    require => [ Service['wso2am'] ]
  }
}