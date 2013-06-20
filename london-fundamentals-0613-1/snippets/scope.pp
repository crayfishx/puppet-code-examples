

##  $::operatingsystem

$myvar = 'TOPSCOPE'

class first {
  $myvar = 'FIRST'
  $hostname='wrong'
}

class second {
  $myvar = 'SECOND SCOPE'
  notify { "My variable is: ${first::myvar}": }
}

include first
include second
