

schedule { 'outofhours':
  period => 'daily',
  range  => '0100-0300',
}



service { 'foo':
  ensure   => running,
  schedule => 'outofhours',
}


