

$myname='Craig'

$hobbies = ['swimming', 'cycling', 'teachng puppet' ]


$content=template('/tmp/code/template.erb')


file { '/tmp/output':
  ensure  => file,
  content => $content,
}

