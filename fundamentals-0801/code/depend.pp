
notify { 'A':
  before => Notify['B'],
}

notify { 'B':
  
}

notify { 'C':
  require => Notify['B'],
}

notify { 'D':
  require => Notify['C'],
}


if ( some_condition ) {
  package { 'blah':
    ensure => installed,
    before => File['/etc/conf']
  }
}


file { '/etc/conf':
  ensure  => file,
}




















