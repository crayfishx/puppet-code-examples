


case $::operatingsytem {
  'redhat': {
     package { 'foo': before => Something['else'] }
  }
}



something { 'else':
  require => Package['foo']
}

