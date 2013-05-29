class users {

  $sysadmins = hiera_hash('users::sysadmins')

  create_resources('user', $sysadmins)
}


include users

  
