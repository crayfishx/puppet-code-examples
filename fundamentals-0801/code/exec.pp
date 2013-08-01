
file { '/etc/conf':
  ensure => file,
  source....
}

exec { 'run_my_command':
  path        => '/usr/local/bin:/usr/bin:/bin',
  command     => 'mycommand.sh',
  #creates    => '/tmp/finished',
  #onlyif     => 'checkstatus.sh',
  #unless     => 'checkstatus.sh',
  refreshonly => true,
  subscribe   => File['/etc/conf'],
}


