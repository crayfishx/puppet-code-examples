class myfiles {

  File {
    ensure => file,
    owner  => 'craig',
    group  => 'craig',
    mode   => '0664',
  }

  file { '/tmp/mydir':
    ensure => directory,
  }

  file { '/tmp/aa':
    content => 'sfsdf',
  }
  file { '/tmp/ab':
    content => 'rtyrty',
    owner   => 'root',
  }
  file { '/tmp/ac':
    content => 'rtyery',
  }
  user { 'craig':
    ensure => present,
  }
}

include myfiles
