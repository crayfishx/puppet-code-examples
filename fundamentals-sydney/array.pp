

$files=[ '/tmp/one', '/tmp/two', '/tmp/3' ]

file { $files:
  ensure => file,
}


