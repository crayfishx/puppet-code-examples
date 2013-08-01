
resources { 'host':
  purge => true,
}


host { 'localhost':
  ensure       => 'present',
  host_aliases => ['localhost.localdomain', 'localhost4', 'localhost4.localdomain4', 'training.puppetlabs.vm', 'training'],
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
  host_aliases => ['master', 'puppet.puppetlabs.vm', 'puppet'],
  ip           => '10.0.1.17',
  target       => '/etc/hosts',
}
