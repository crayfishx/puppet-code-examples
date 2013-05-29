resources { 'host':
  purge => true,
}

host { 'classroom.puppetlabs.vm':

  ensure       => 'present',
  host_aliases => ['classroom'],
  ip           => '10.0.1.21',
  target       => '/etc/hosts',
}
host { 'craig.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['craig'],
  ip           => '10.0.1.30',
  target       => '/etc/hosts',
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













