class users {
  @user { '1craig':
    ensure => present,
    gid    => 'staff',
  }
  @user { '2craig':
    ensure => present,
    gid    => 'staff',
  }
  @user { '3craig':
    ensure => present,
  }
}

class myapp {
  User <| gid == 'staff' |>


}
include users
include myapp
