class profiles::blog {

  class { 'apache': }

  class { 'apache::mod::php': }

  class { 'mysql::server':
    config_hash => { 'root_password' => 'foo' }
  }
  class { 'mysql::php':
    before => Class['wordpress'],
  }

  user { 'wordpress':
    ensure => present,
    before => Class['wordpress'],
  }

  class { 'wordpress':
    wp_owner    => 'wordpress',
    wp_group    => 'wordpress',
    db_user     => 'wordpress',
    db_password => 'foo',
    install_dir => '/var/www/html',
    require     => Class['apache'],
  }






}


