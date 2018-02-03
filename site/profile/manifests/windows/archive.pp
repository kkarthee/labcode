class profile::windows::archive
{
  file { '7z1801-x64.msi':
    path   => 'c:\\Temp\\7z1801-x64.msi',
    source =>  'puppet:///modules/custom/7z1801-x64.msi',
  }
  class { 'archive':
    seven_zip_name     =>  '7-Zip 9.20 (x64 edition)',
      seven_zip_source =>  'C:/Temp/7z1801-x64.msi',
    seven_zip_provider =>  'windows',
    require           => File[ '7z1801-x64.msi'],
  }
}
