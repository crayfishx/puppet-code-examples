class demofile {

File {
  owner => 'craig',
}

  file { '/tmp/testdynamic':
    ensure  => file,
    content => template('demofile/test.erb')
  }

  file { '/tmp/test':
    ensure  => directory,
    source  => 'puppet:///modules/demofile/test',
    recurse => true,
  }
}


