# Class: 
#
# Description
#
# Parameters:
#   
# Actions:
#
# Requires:
#
# Sample Usage:
#
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
