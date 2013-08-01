

package { 'apache':
  ensure => installed,
  name   => 'apache2',
}


user { 'craig':
  ensure => present,
  name   => 'craigdunn',
}
