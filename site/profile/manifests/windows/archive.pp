class profile::windows::archive
{
  class { 'archive':
    seven_zip_name     =>  '7-Zip 9.20 (x64 edition)',
      seven_zip_source =>  'C:/Windows/Temp/7z920-x64.msi',
    seven_zip_provider =>  'windows',
  }
}
