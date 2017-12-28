class profile::windows::npp
{
  include chocolatey
  include profile::windows::param
  file { 'C:\\temp\\package\\npp.7.5.3.Installer.x64.exe':
    source => 'puppet:///modules/custom/npp.7.5.3.Installer.x64.exe'
  }
  package { 'notepadplusplus':
    ensure   => '7.5.3',
    provider => chocolatey,
    source   =>  'c:\\temp\\package',
  }
}
