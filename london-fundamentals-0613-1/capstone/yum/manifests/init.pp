class yum  {
  yumrepo { 'base':
    descr      => 'CentOS-$releasever - Base',
    enabled    => '1',
    gpgcheck   => '1',
    gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6',
    mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os',
  }
}
