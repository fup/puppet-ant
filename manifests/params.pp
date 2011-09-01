# Class: ant::params
#
# Description
#   This class is designed to carry default parameters for 
#   Class: ant.  
#
# Parameters:
#   $at_default_version - The default version of Apache Ant that you want to install/manage. 
#
# Actions:
#   This module does not perform any actions.
#
# Requires:
#   This module has no requirements.   
#
# Sample Usage:
#   This method should not be called directly.   
class ant::params {
  $at_default_version = 'present'
}
