
class filez {

  File {
    ensure => file,
    owner  => 'craig',
    group  => 'craig',
    mode   => '0644',
  }

  file { '/tmp/foo':
    ensure => directory,
  }

  file {
    '/tmp/two':
      content => 'foo',
      owner   => 'root';
    '/tmp/five':
      content => 'bar';
  }


  file { '/tmp/three':
    content => 'foobar',
  }
  file { '/tmp/four':
    content => 'barfoo',
  }
}
include filez
