
class foo {
  File {
    ensure => file,
    owner  => 'root',
    mode   => '0644',
    group  => 'root',
  }
  file { '/tmp/a':
    content => 'helo world',
    owner   => 'craig',
  }
  
  file { '/tmp/b':
    ensure  => directory,
    content => 'helo world',
  }
  file { '/tmp/c':
    content => 'helo world',
  }
  file { '/tmp/d':
    content => 'helo world',
  }

}
include foo
