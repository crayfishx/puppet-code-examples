

case $::operatingsystem {
  'centos': {
    notify { 'I am on CENTOS': }
  }
  default: {
  }
}

if ( $::operatingsystem =~ /centos/ ) {
  notify { 'if MATCHED!!': }
}








