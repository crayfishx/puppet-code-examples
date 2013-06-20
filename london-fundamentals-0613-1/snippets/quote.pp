

$mynam='Craig'

# Hello_my_name_is_Craig_nice_to_meet_you

$var="Hello_my_name_is_${mynam}_nice_to_meet_you"

notify { $var: }


$package = 'httpd'

package { "${httpd}-server":
  ensure => installed,
}




