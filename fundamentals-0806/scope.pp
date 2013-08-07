# manifests/site.pp
$myvar='TOPSCOPE'
$hostname='localhost'



class first {
  $myvar='FROM FIRST CLASS'
  $hostname='something'
}

class second {
  #$myvar='FROM SECOND CLASS'
  notify { "Var is ${first::myvar}": }
}

include second
include first

