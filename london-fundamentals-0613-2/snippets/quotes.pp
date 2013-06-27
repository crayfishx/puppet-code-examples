


$myname='Hello_my_name_is'

# Hello_name_is_craig

$myvar = "${myname}_craig"

notify { $myvar: }


file { "foo":
  ensure => file,
  mode   => "0444",
}


