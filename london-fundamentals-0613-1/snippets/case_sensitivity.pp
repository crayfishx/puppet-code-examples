

case $::operatingsystem {
  'centos': {
    notify { 'CENTOS WINS': }
  }
  /.*doze/: {
  }

  default: {
   notify { 'others fail': }
 }
}

if ( $::operatingsystem =~ /centos/ ) {
   notify { 'if statement matched': }
} else {
  notify { 'if statement did NOT match': }
}



