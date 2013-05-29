

class apache {
  service { 'httpd':
    ensure    => running,
  }
}

...... separate module....

class myapplication {

  file { '/etc/app_config':
    ensure => file,
    notify => Service['httpd'],
  }
}


