# Class: ant::package
#
# Description
#   This class is designed to properly select the appropriate
#   package class based on operating system. This class is called from
#   Class ant.
#
# Parameters:
#   $version - The version of Apache Ant to be installed. This parameter 
#   is passed from Class ant. 
#
# Actions:
#   This class is designed to properly select the appropriate
#   package class based on operating system.
#
# Requires:
#   This module has no requirements.   
#
# Sample Usage:
#   This method should not be called directly.
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
