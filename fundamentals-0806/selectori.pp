

notify { 'something':
  message => $::operatingsystem ? {
    'debian' => 'sucks to be you',
    'centos' => 'FTW',
    default  => 'I dont know you',
  },
}

