notify { "A fact is ${::operatingsystem}": }

# $::myvar
$myvar='TOP SCOPE'


class first {
   # $first::myvar
   $myvar='FIRST CLASS SCOPE'
   $hostname='localhost'
   include second
}

class second {

   notify { "Myvar value is ${myvar}": }
   notify  { "HOST is ${::hostname}": }
}

include first




#modules/foo/manifests/init.pp <-- class foo {
  #modules/foo/manifests/bar.pp <-- class foo::bar {











