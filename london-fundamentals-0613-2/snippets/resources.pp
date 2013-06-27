
#host { 'foo.puppetlabs.vm':
#  ensure => present,
#  ip     => '10.0.0.1',
#}

resources { 'host':
  purge => true,
}


host { 'localhost':
  ensure       => 'present',
  host_aliases => ['localhost.localdomain', 'localhost4', 'localhost4.localdomain4'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}
host { 'localhost.localdomain':
  ensure       => 'present',
  host_aliases => ['localhost'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}
host { 'master.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['master', 'puppet', 'puppet.puppetlabs.vm'],
  ip           => '10.2.1.227',
  target       => '/etc/hosts',
}
