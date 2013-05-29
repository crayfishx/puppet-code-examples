

package { 'apache':
  ensure => installed,
}

file { '/etc/httpd.conf':
  ...
  ..
}
service { 'httpd':
  ensure    => running,
  restart   => '/bin/service apache reload',
  subscribe => File['/etc/httpd.conf'],
}



----
if ( $something ) {
  package { 'foo':
    ensure => installed,
    before => File['/something'],
  }
}


file { '/something':
  ensure  => file,
}


