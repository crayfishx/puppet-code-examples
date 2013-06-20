

schedule { 'outofhours':
  range => "1:30 - 4:30",
}


file { '/var/something/dangerous':
  ensure   => file,
  schedule => 'outofhours',
}



