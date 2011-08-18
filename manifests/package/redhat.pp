class ant::package::redhat( 
  $version
) {
  $packages = ['ant']
  $depends  = ['java-1.6.0-openjdk-devel', 'xerces-j2', 'xml-commons',
               'xml-commons-jaxp-1.3-apis', 'xml-commons-resolver']

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
