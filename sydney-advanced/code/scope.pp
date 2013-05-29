

$myvar = 'TOP SCOPE'

class first {
  $myvar = 'FIRST'
  include second
}

class second {
  notify { "My var is ${myvar}": }

}

include first

