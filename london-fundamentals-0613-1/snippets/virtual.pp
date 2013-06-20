

class users {

  @user { 'craig':
    ensure => present,
    tag    => 'sysadmin',
  }
  @user { 'bill':
    ensure => present,
  }
  @user { 'susan':
    ensure => present,
    tag    => 'sysadmin',
  }
  @user { 'bob':
    ensure => present,
  }
}

include users

# realize (User['craig'])

User <| tag == 'sysadmin'  |>






