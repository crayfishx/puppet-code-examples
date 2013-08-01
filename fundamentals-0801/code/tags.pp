class apache {
  package { 'httpd':
    ensure => installed,
    tag    => 'webserver',
  }

}

## puppet agent -t --tags webserver

## puppet agent -t --tags apache
