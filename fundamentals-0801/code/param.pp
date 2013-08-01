class apache (
   $version = 'latest'
) {
  package { 'httpd':
    ensure => $version
  }
}

#... site.pp

node prodnode {
  class { 'apache':
    version => '2.2.1',
  }
}

node devnode {
  class { 'apache': }
}


