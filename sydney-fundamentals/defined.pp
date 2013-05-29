## Defining
define vhost (
  $docroot = '/dev/null',
)
{

  file { "/var/www/html/${name}":
    ensure => directory,
  }
  file { "/etc/httpd/conf.d/${name}.conf":
    ensure => file,
  }
}

class foo {
  File { owner => 'craig' }

## Declaring
vhost { 'www.craig.org':
  docroot => '/var/www/html/craig',
}
}

include foo

$websites=[ 'foo.org', 'bar.org', 'baz.org', 'puppet.com' ]

vhost { $websites: }
#
#
#
#











