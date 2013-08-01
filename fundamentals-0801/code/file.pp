file { '/tmp/myfile':
  owner   => 'root',
  mode    => '0644',
  content => 'hello world',
}


