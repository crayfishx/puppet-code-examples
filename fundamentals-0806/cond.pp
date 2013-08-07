

case $::operatingsystem {
  /OasdS/,/CentOS/: {
    notify { 'I am centos': }
  }
  default: { fail ('something') }
}


