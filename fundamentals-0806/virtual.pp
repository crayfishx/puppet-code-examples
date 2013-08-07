class users {
  @user { 'craig':
    ensure => present,
    gid    => 'sysadmin',
  }
  @user { 'gerrard':
    ensure => present,
    gid  => 'teaboy',
  }
  @user { 'susan':
    ensure => present,
    gid  => 'dba',
  }
  @user { 'bob':
    ensure => present,
    gid  => 'dba',
  }
}
include users

User <| gid == 'dba' or gid == 'teaboy' |>

#realize(User['craig'])









