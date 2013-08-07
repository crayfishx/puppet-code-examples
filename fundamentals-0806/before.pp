

if ( $some_condition ) {
  package { 'something':
    ensure => installed,
    before => File['/etc/config'],
  }
}

file { '/etc/config':
  ensure  => file,
}

