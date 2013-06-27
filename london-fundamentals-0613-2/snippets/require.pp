
if ( $condition ) {
  package { 'foo':
    ensure => installed,
    before => Service['foo'],
  }
}



service { 'foo':
  ensure  => running,
}


