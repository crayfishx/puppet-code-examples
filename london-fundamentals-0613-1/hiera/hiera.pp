# modules/apache/manifests/init.pp
class apache (
  $version = hiera('apache::package_version', 'latest')
){
  #  package { 'httpd':
  #  ensure => $version,
  #}

  notify { "I would have installed Apache ${version}": }

}

# /etc/puppet/manifests/site.pp
#node 'devnode' {
  class { 'apache': }
#}
#node 'prodnode' {
#  class { 'apache': }
#}
#node 'stagingnode' {
#  class { 'apache': }
#}
