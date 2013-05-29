

case $::operatingsystem {
  'centos': {

    notify { 'running on centos': }
    #include foo

  }

  default: {

    fail('Im not on CentOS so I wont bother')

  }
}

