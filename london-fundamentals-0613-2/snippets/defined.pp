define something (
  $option = 'default',
) {
  file { "/tmp/foo_${name}.conf":
    ensure => file,
  }
}

something { 'hello': }
something { 'world': }

