

file { '/dependancy':
  ensure => file,
  notify => Exec['my command'],
}

exec { 'my command':
  path        => '/usr/local/bin:/usr/bin:/bin',
  command     => 'test.sh',
  #creates    => '/tmp/finished',
  #onlyif     => 'check_status.sh',
  #unless     => 'check_status.sh',
  refreshonly => true,
}


