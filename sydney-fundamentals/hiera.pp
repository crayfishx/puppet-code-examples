class apache (
  $packagever = hiera('apache::packagever', 'latest')
)
 {
  package { 'httpd':
    ensure => $packagever,
  }
}

.... site.pp
node devnode {
  class { 'apache': }
}
node prodnode {
  class { 'apache': 
    packagever => '2.2.3',
  }
}

