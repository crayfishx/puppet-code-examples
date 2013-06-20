
file { '/tmp/myfile':
  ensure  => file,
  owner   => 'root',
  content => 'Hello World',
}


