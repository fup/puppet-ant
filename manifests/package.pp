class ant::package(
  $version
) {
  anchor { 'ant::package::begin': }
  anchor { 'ant::package::end': }

  Class {
    version => $version,
    require => Anchor['ant::package::begin'], 
    before  => Anchor['ant::package::end'],
  }

  case $::operatingsystem {
    redhat,oel,fedora,centos: {
      class { 'ant::package::redhat': }
    }
  }
}
