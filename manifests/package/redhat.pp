# Class: ant::package::redhat
#
# Description
#   This class is designed to install Apache Ant packages
#   on RHEL based systems. 
#
# Parameters:
#   $version - The version of Apache Ant to be installed. This parameter 
#   is passed from Class ant. 
#
# Actions:
#   This class installs RPMs for RHEL systems.
#
# Requires:
#   This module has no requirements.   
#
# Sample Usage:
#   This method should not be called directly.
class ant::package::redhat( 
  $version
) {
  $packages = ['ant']
  $depends  = ['java-1.6.0-openjdk-devel', 'xerces-j2', 'xml-commons',
               'xml-commons-resolver']

  @package { $packages:
    ensure => $version,
    tag    => 'ant-rpms',
  }
  @package { $depends:
    ensure => 'present',
    tag    => 'ant-rpms',
  }
  Package<| tag == 'ant-rpms' |>
}
