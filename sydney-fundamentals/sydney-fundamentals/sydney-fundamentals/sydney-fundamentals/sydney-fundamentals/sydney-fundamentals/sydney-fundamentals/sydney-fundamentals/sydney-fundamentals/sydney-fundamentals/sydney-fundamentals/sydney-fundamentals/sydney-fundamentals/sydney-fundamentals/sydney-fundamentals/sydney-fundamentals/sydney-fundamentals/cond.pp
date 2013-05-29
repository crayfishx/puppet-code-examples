

if ( $::operatingsystem =~ /centos/ ) {
  notify { 'MATCHED': }

}



case $::operatingsystem {
  'centos','fedora': {
    notify { 'CASE MATCHED': }
  }
  /.*hat/: {
    notify { 'probab;y readhat': }
  }

  default: { notify { 'no': } }
}

