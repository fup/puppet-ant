class ant (
  $version = ''
) {
  include stdlib
  include ant::params

  if $version == '' {
    $REAL_version = $ant::params::at_default_version
  } else {
    $REAL_version = $version
  }

  anchor { 'ant::begin': } 
  -> class { 'ant::package':
       version => $REAL_version,
     }
  -> anchor { 'ant::end': }
}
