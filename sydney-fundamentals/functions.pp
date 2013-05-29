




file { '/tmp/foo':
  ensure  => file,
  content => template('apache/vhost.erb'),
}

