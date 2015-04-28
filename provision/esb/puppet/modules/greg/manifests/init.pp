class greg{
  file { '/tmp/wso2greg-4.6.0.zip':
    source => '/home/vagrant/wso2greg-4.6.0.zip',
  }

  file { '/opt/wso2greg-4.6.0':
    ensure => directory,
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => 0644,
  }

  exec { 'Extract WSO2 Governance Registry':
    command => '/usr/bin/unzip /tmp/wso2greg-4.6.0.zip',
    cwd     => '/opt',
    creates => '/opt/wso2greg-4.6.0/bin/wso2server.sh',
    user    => 'vagrant',
    group   => 'vagrant',
    require => File['/tmp/wso2greg-4.6.0.zip', '/opt/wso2greg-4.6.0'],
    timeout => 0,
  }->
  file { '/etc/init.d/wso2greg':
    owner  => root,
    group  => root,
    mode   => 755,
    source => '/vagrant/provision/esb/puppet/modules/greg/files/wso2greg',
  }->
  service { 'wso2greg':
    ensure => true,
    enable => true
  }

  file { '/opt/wso2greg-4.6.0/repository/conf/carbon.xml':
    source  => '/vagrant/provision/esb/puppet/modules/greg/files/carbon.xml',
    require => Exec['Extract WSO2 Governance Registry'],
    notify  => Service['wso2greg'],
  }
}
