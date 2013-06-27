file { '/tmp/example':
  ensure => directory,
}

file { '/tmp/example/file.txt':
  ensure  => file,
  content => "Hello World\n\n",
}



# Sourcing a local file on the *agent*\
file { '/tmp/example/destination_file.txt':
  ensure => file,
  source => '/tmp/sourcefile',
}


file { '/tmp/linked':
  ensure => link,
  target => '/tmp/example',
}




