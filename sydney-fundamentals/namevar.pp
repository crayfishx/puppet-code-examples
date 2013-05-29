

file { 'setup':
  ensure => file,
  path   => '/tmp/foo',
}


package { 'httpd':
  ensure => installed,
  name   => $package_name,
}
