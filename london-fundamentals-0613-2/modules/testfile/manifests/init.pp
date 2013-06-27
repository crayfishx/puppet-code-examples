class testfile {

  file { '/tmp/served_from_module.txt':
    ensure => file,
    source => 'puppet:///modules/testfile/source.txt',
  }


}

## 'puppet:///modules/testfile/src.txt',

## <modulepath>/<modulename>/files/<filename>
# /etc/puppetlabs/puppet/modules/testfile/files/src.txt
