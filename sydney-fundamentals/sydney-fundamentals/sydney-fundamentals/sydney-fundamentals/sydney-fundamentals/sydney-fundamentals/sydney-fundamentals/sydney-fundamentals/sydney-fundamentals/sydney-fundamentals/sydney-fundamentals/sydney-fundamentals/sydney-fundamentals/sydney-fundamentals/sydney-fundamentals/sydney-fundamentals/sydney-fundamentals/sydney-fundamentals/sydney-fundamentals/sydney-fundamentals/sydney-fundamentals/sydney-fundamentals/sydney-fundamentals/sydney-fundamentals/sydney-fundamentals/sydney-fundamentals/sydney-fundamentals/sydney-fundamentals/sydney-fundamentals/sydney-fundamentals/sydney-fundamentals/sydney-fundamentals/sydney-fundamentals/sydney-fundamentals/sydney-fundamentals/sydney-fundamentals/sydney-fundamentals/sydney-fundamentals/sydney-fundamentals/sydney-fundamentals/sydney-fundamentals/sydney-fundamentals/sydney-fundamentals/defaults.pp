
class foo {
  File {
    owner  => 'craig',
    group  => 'root',
    mode   => '0644',
    ensure => file,
  }
  
  
  file { '/tmp/_one':
    content => 'hello',
  }
  file { '/tmp/_two':
    content => 'hello there',
    owner   => 'root',
  }
  file { '/tmp/_three':
    content => 'hello foo',
  }
}
