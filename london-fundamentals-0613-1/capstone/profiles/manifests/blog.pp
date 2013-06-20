class profiles::blog {

  include yum


  class { 'apache':
    require => Yumrepo['base'],
  }
  class { 'apache::mod::php':
    require => Yumrepo['base'],
  }

  class { 'mysql::server':
    config_hash => { 'root_password' => 'foo' }
  }

  class { 'mysql::php':
    before => Class['wordpress'],
  }


  user { 'wordpress':
    ensure => present,
  }
  class { 'wordpress':
    wp_owner    => 'wordpress',
    wp_group    => 'wordpress',
    db_user     => 'wordpress',
    db_password => 'foobar',
    require     => User['wordpress'],
  }

  apache::vhost { 'blog.craigdunn.org':
    vhost_name =>  $::ipaddress,
    docroot    => '/opt/wordpress',
    port       => 80,
  }



}

