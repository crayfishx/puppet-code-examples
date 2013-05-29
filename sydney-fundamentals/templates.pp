
template ('/full/path/to/file.erb')
template ('modulename/template.erb')

class myclass {
$myname='craig'
$myarray=[ 'one', 'two', 'three' ]

file { '/tmp/myfile':
  ensure  => file,
  content => template('/tmp/code/template.erb')
}

} 

include myclass

