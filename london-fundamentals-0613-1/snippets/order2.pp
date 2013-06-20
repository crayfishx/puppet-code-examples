

file { '/etc/httpd/httpd.conf':
  ensure => file,
  source => 'puppet://....',
}

service { 'httpd':
  ensure    => running,
  restart   => 'service apache reload',
  subscribe => File['/etc/httpd/httpd.conf'],
}


