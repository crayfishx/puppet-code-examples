class testtemplate {
  $myname='Craig'
  $likes=['travelling', 'cooking', 'puppet']

  file { '/tmp/dynamic':
    ensure  => file,
    content => template('testtemplate/template.erb'),
  }
}
