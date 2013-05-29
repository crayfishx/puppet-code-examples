
define something () {
  notice ($notify)
}


service { 'httpd':
  ensure => running,
}

something { 'foo':
  notify => Service['httpd'],
}


