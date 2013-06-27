

service { 'httpd':
  ensure  => running,
  enable  => true,
  restart => '/bin/service apache reload',
}

service { 'myapp':
  ensure => running,
  start  => '/usr/local/bin/myapp_start.sh',
  stop   => '/usr/local/bin/myapp_stop.sh',
  status => '/usr/local/bin/is_running.sh',
}

