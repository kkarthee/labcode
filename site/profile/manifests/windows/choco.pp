class profile::windows::choco
{
  file { ['c:\\choco','c:\\temp','c:\\temp\\package']:
    ensure =>  directory,
  }
  # file { 'c:\\temp\\package':
  # path   => 'c:\\temp\\package',
  # ensure =>  directory,
  # }
  file {'chocolatey.0.10.8.nupkg':
    path   => 'c:\\temp\\package\\chocolatey.0.10.8.nupkg',
    source =>  'puppet:///modules/custom/chocolatey.0.10.8.nupkg',
  }
  class { 'chocolatey':
    chocolatey_download_url => 'file:///C:/temp/package/chocolatey.0.10.8.nupkg',
    choco_install_location  => 'c:\\choco',
    #ensure                 =>  present,
    }
    #include chocolatey
    }
