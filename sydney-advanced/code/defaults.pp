
File {
  owner => root,
  group => root,
  mode  => 0644
}


$files = ['/tmp/one', 'tmp/two'..]

file { $files: }
