

class foo {

  service { 'foo':
    ensure  => stopped,
    require => File['/config']
  }
}

class foo::bar inherits foo {
  Service['foo'] {
    ensure  => running,
    require +> File['/bar/server'],
  }
}


