

@@host { $::hostname:
  ip => $::ipaddress,
}

Host <<| |>>


# host { 'craig.puppetlabs.vm':
#   ip => '10.0.0.1',
#}
