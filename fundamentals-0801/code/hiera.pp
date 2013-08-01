
# Lookup: <classname>::<varname>
# ... apache::version

class apache (
   $version = 'latest'
) {
  #package { 'httpd':
  #  ensure => $version
  #}

  notify { "The package would be ${version}": }
}

#... site.pp


class { 'apache': 
}



