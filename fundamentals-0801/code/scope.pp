
$hostname='localhost'
$myvar='TOPSCOPE'

class first {
  include second
  $myvar='From first'

}

class second {
  #$myvar='From Second'
  notify { "My Variable is ${second::myvar}": }
}

include first

