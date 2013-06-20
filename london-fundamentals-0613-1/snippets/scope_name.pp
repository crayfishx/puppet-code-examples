

class profiles::mysql {
  # did stuff

  include ::mysql
}


class mysql {
  notify { 'Im installing mysql': }
}

include profiles::mysql
