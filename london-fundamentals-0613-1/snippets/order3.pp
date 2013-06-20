
if ( $some_condition ) {
  file { '/etc/httpd/httpd.conf':
    ensure => file,
    source => 'puppet://....',
    notfiy => Service['httpd'],
  }
}

service { 'httpd':
  ensure    => running,
  restart   => 'service apache reload',
}


