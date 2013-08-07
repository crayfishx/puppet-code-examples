class testfile {

  file { '/tmp/served_file':
    ensure => 'file',
    owner  => 'root',
    source => 'puppet:///modules/testfile/source.txt',
  }

  # puppet://<host>/modules/<module>/<filename>
  # <modulepath>/<modulename>/files/<filename>

  file { '/tmp/myfolder':
    ensure  => directory,
    source  => 'puppet:///modules/testfile/foo',
    recurse => true,
  }

  ## templating
  $myname='Craig'
  $hobbies=['cooking','walking','puppet']
  
  file { '/tmp/dynamic.txt':
    ensure  => file,
    content => template('testfile/template.erb')
  }

}







