class users {
  @user { 'bob':
    ensure => present,
  }
  @user { 'peter':
    ensure => present,
    tag    => 'sysadmin',
  }
  @user { 'susan':
    ensure => present,
    tag    => 'sysadmin',
  }
  @user { 'paul':
    ensure => present,
  }
}
include users

User <| tag == 'sysadmin' |>







##realize(User['susan'])

