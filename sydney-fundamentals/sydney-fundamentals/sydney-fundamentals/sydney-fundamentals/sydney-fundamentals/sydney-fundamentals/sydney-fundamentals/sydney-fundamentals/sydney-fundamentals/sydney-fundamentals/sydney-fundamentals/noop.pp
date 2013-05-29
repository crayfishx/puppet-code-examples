
service { 'httpd':
  ensure => running,
  noop   => true,
}

....

require => Service['httpd'],


