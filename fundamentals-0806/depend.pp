

notify { 'A':
  before => Notify['B'],
}
notify { 'B':
}
notify { 'C':
  require => Notify['B'],
}
notify { 'D':
  require => Notify['C'],
}
