class am{
  file { '/tmp/wso2am-1.8.0.zip':
    source => '/home/vagrant/wso2am-1.8.0.zip',
  }

  file { '/opt/wso2am-1.8.0':
    ensure => directory,
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => 0644,
  }

  exec { 'Extract WSO2 API Manager':
    command => '/usr/bin/unzip /tmp/wso2am-1.8.0.zip',
    cwd     => '/opt',
    creates => '/opt/wso2am-1.8.0/bin/wso2server.sh',
    user    => 'vagrant',
    group   => 'vagrant',
    require => File['/tmp/wso2am-1.8.0.zip', '/opt/wso2am-1.8.0'],
    timeout => 0,
  }->
  file { '/etc/init.d/wso2am':
    owner  => root,
    group  => root,
    mode   => 755,
    source => '/vagrant/provision/esb/puppet/modules/am/files/wso2am',
  }->
  service { 'wso2am':
    ensure => true,
    enable => true,
  }

  file { '/opt/wso2am-1.8.0/repository/conf/api-manager.xml':
    source  => '/vagrant/provision/esb/puppet/modules/am/files/api-manager.xml',
    require => Exec['Extract WSO2 API Manager'],
    notify  => Service['wso2am'],
  }

  file { '/opt/wso2am-1.8.0/repository/conf/carbon.xml':
    source  => '/vagrant/provision/esb/puppet/modules/am/files/carbon.xml',
    require => Exec['Extract WSO2 API Manager'],
    notify  => Service['wso2am'],
  }

  file { '/opt/wso2am-1.8.0/repository/conf/datasources/master-datasources.xml':
    source  => '/vagrant/provision/esb/puppet/modules/am/files/master-datasources.xml',
    require => Exec['Extract WSO2 API Manager'],
    notify  => Service['wso2am'],
  }
}