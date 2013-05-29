class users {

  $sysadmins = hiera_array('users::sysadmins')

  user { $sysadmins:
    ensure => present,
  }
}


include users

  
