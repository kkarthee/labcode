class profile::windows::base {
class { 'chocolatey':
#ensure => present,
choco_install_location => 'C:\choco',
}
}
