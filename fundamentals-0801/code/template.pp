

$myname='Craig'
$likes=['travelling','cooking','puppet']

file { '/tmp/dynamic_file':
  ensure  => file,
  content => template('/tmp/code/template.erb')
}




