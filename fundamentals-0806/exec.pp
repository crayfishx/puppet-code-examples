
exec { 'my command':
  path     => '/usr/local/bin:/usr/bin:/bin',
  command  => 'mycommand.sh',
  #creates => '/tmp/finished',
  #onlyif   => 'mystatus.sh',
  unless    => 'mystatus.sh',
}


