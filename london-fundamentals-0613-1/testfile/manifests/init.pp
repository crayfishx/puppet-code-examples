class testfile {

  file { '/tmp/served_file':
    ensure => file,
    source => 'puppet:///modules/testfile/source.txt',
  }

  file { '/tmp/linked_file':
    ensure => link,
    target => '/tmp/served_file',
  }
}

# puppet://<hostname>/modules/<module_name>/<file>
# <modulepath>/<module_name>/files/<file>

# puppet://<hostname>/modules/<module_name>/foo/<file>
# <modulepath>/<module_name>/files/foo/<file>
