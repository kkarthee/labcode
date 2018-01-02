class profile::linux::package (
  $pacakge_install = lookup ( 'package', {merge =>  unique})
)
{
package { $pacakge_install:
  ensure =>  latest,
}
}
