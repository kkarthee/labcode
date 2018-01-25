class profile::windows::security (
  # $adminkey = 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}',
  #$userkey = 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}'
  $key_loc = 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components',
  $key_loc_shut = 'HKLM\Software\Microsoft\Windows\CurrentVersion\Reliability'
)
{
  registry::value { 'IE Enhanced security user':
    key   => "${key_loc}\\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}",
    value =>  'IsInstalled',
    data  => '1',
    type  => dword,
}
registry::value { 'IE Enhanced security Admin':
    key   => "${key_loc}\\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}",
    value => 'IsInstalled',
    type  =>  dword,
    data  =>  '1',
}
registry::value { 'Enable shutdown tracker':
    key   => "$key_loc_shut\\shutdown",
    value => 'ReasonCode',
    type  => dword,
    date  =>  '1',
}
}
