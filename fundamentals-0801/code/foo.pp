# modules/conditionals/manifests/out.pp

class conditionals::out {

  $contents = $::operatingsystem ? {
    'centos' => 'Best OS in the world',
    'debian' => 'fail',
  }

  file { '/tmp/os':
    ensure  => file,
    content => $contents
  }

}

# tests/in.pp
# include conditionals::out
