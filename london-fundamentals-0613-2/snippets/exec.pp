

file { '/some/file':
  ensure  => file,
  content => .....
  notify  => Exec['my command'],
}


exec { 'my command':
  path        => '/usr/local/bin:/usr/bin:/bin',
  command     => 'mycommand.sh',
  #creates    => '/tmp/command_finished',
  #onlyif     => '/usr/local/bin/check_status.sh',
  #unless     => '/usr/local/bin/check_status.sh',
  refreshonly => true,
}


