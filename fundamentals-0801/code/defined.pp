define something (
  $myoption = 'default',
) {
  file { "/tmp/defined_${name}.txt":
    content => $myoption,
  }

  file { "/tmp/somewhere_${name}":
    ensure => directory,
  }
}

# ....
something { 'craig':}

something { 'second':
  myoption => 'Override data',
}
something { 'third':}
something { 'fourth':}



