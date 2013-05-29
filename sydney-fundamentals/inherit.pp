
class ssh {

  package { 'ssh-clients': }

  service { 'sshd':
    ensure  => stopped,
    require => Something['title'],
  }
}

class ssh::server inherits ssh {
  package { 'ssh-server': }
  Service['sshd'] {
    ensure  => running,
    require +> Something['else'],
  }
}

class { 'ssh::server': }
class { 'ssh': }


