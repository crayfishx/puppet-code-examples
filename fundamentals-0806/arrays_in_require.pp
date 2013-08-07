

$myarray=['abc','def','ghi']

notify { $myarray: }


resource { 'something':
  require => [ Package['foo','bar'], Service['foo']],
}

