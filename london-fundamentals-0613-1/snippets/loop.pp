

notify { 'a':
  require => Notify['b'],
}

notify { 'b':
  require => Notify['a'],
}

