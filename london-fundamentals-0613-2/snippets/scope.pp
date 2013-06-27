
$hostname='localhost'
$myvar="TOP SCOPE"

class first  {
  $myvar = 'FIRST CLASS'
  include second
}

class second {
  ###$myvar = 'SECOND CLASS'
  notify { "My var is ${::myvar}":
  }
}

include first

