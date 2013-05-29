file { '/tmp/a':
  ensure  => file,
  require => File['/tmp/b'],
}

file { '/tmp/b':
  ensure  => file,
  require => File['/tmp/a'],
}
