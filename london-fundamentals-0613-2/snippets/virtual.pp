class users {
  @user { 'craig':
    ensure => present,
  }
  @user { 'bob':
    ensure => present,
    tag    => 'sysadmins',
  }
  @user { 'susan':
    ensure => present,
    tag    => 'sysadmins',
  }
  @user { 'peter':
    ensure => present,
  }
}

include users

## realize (User['bob'])

User <| tag == 'sysadmins' |>









