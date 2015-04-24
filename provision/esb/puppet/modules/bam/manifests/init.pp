class bam{
  file { '/tmp/wso2bam-2.4.1.zip':
    source => '/home/vagrant/wso2bam-2.4.1.zip',
  }

  file { '/opt/wso2bam-2.4.1':
    ensure => directory,
    owner  => 'vagrant',
    group  => 'vagrant',
    mode   => 0644,
  }

  exec { 'Extract WSO2 Business Manager':
    command => '/usr/bin/unzip /tmp/wso2bam-2.4.1.zip',
    cwd     => '/opt',
    creates => '/opt/wso2bam-2.4.1/bin/wso2server.sh',
    user    => 'vagrant',
    group   => 'vagrant',
    require => File['/tmp/wso2bam-2.4.1.zip', '/opt/wso2bam-2.4.1'],
    timeout => 0,
  }->
  file { '/etc/init.d/wso2bam':
    owner  => root,
    group  => root,
    mode   => 755,
    source => '/home/vagrant/wso2bam-2.4.1.zip',
  }->
  service { 'wso2bam':
    ensure => true,
    enable => true,
  require => [ Service['wso2am'] ],
  }

  file { '/opt/wso2bam-2.4.1/repository/conf/carbon.xml':
    source  => '/vagrant/provision/esb/puppet/modules/bam/files/carbon.xml',
    require => Exec['Extract WSO2 Business Manager'],
    notify  => Service['wso2bam'],
  }

  file { '/opt/wso2bam-2.4.1/repository/conf/datasources/bam-datasources.xml':
    source  => '/vagrant/provision/esb/puppet/modules/bam/files/bam-datasources.xml',
    require => Exec['Extract WSO2 Business Manager'],
    notify  => Service['wso2bam'],
  }

  file { '/opt/wso2bam-2.4.1/repository/deployment/server/bam-toolbox/API_Manager_Analytics.tbox':
    source  => '/vagrant/provision/esb/puppet/modules/bam/files/API_Manager_Analytics.tbox',
    require => Exec['Extract WSO2 Business Manager', 'Extract WSO2 API Manager'],
    notify  => Service['wso2bam'],
  }

  file { '/opt/wso2bam-2.4.1/repository/conf/etc/hector-config.xml':
    source  => '/vagrant/provision/esb/puppet/modules/bam/files/hector-config.xml',
    require => Exec['Extract WSO2 Business Manager'],
    notify  => Service['wso2bam'],
  }
}
