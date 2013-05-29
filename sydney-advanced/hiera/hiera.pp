class apache  ( $version = hiera('apache::package_version','latest') ){
  #package { 'httpd':
  #  ensure => $version
  #}

  notify  { "Apache ${version} would have been installed":}
}

include apache
