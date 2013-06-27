

service { 'foo':
  ensure  => running,
}

file { '/tmp/foo':
  ensure  => file,
  require => Service['foo'],
}




