class blog {

  file { '/var/www/html/index.html':
    ensure => absent,
  }


  # Mysql
  class  { 'mysql::server':
    config_hash => { 'root_password' => 'foobar' }
  }

  class { 'mysql::php': 
    notify => Service['httpd'],
  }


  # PHP Enabled Webserver

  class { 'apache': }
  class { 'apache::mod::php': }



  # Wordpress

  class { 'wordpress':
    install_dir => '/var/www/html',
  }
}
