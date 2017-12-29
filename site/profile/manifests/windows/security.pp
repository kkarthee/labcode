class profile::windows::security (
  # $adminkey = 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}',
  #$userkey = 'HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}'
  $key_loc = 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components'
)
{
  registry::value { 'IE Enhanced security user':
    key   => '${key_loc}\\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}',
    value =>  'IsInstalled',
    data  => '0',
    type  => dword,
}
registry::value { 'IE Enhanced security Admin':
    key   => "${adminkey}\\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}",
    value => 'IsInstalled',
    type  =>  dword,
    data  =>  '0',
}
}
