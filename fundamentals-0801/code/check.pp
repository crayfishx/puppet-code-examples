file { '/etc/httpd.conf.test':
  ensure => file,
  source => ....
}

exec { 'check':
  command     => 'httpd -t /etc/httpd.conf.test',
  subscribe   => File['/etc/httpd.conf.test'],
  refreshonly => true,
}

file { '/etc/httpd.conf':
  source  => '/etc/httpd.conf.test',
  require => Exec['check'],
}


