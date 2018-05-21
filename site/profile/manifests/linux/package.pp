class profile::linux::package (
# $pacakge_install = lookup ( 'package', {merge =>  unique})
)
{
  package { 'yum':
    ensure =>  latest,
  }
#package { $pacakge_install:
package { vim:
  ensure  => latest,
  require =>  Package['yum'],
}
}
