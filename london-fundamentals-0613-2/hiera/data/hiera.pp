class apache (
  $version = hiera('apache::package_version', 'installed')
){
  #package { 'httpd':
  #  ensure => $version,
  #}
  notify { "I would have installed apache ${version}": }
}

  class { 'apache':}


