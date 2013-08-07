

$myname='Craig'
$hobbies=['cooking','walking','puppet']

file { '/tmp/dynamic.txt':
  ensure  => file,
  content => template('modname/template.erb')
}




