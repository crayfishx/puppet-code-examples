
case $::operatingsystem {
  'centos': {
    include class
    declare  { 'resource': }
    $assign = 'variable'
   }
   'debian': {
     include something_else
   }
   default: {
     fail('Nothing matched')
   }
}
