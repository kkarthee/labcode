class profile::windows::website (
$iis_features = ['Web-WebServer','Web-Scripting-Tools']
)
{
  file { 'webdir':
          ensure =>   'directory',
          path   =>   'c:\\temp\\wwwroot',
                    }
iis_feature { $iis_features:
    ensure =>  'present',
}
    -> iis_site { 'Test Webserver':
    ensure          => 'started',
    physicalpath    => 'c:\\temp\\wwwroot',
    applicationpool => 'DefaultAppPool',
    require         => File['webdir'],
    #provider        => 'powershell',
    bindings        => [
          {
                  'bindinginformation' =>  '*:8080:',
                        'protocol'     =>  'http',
          },
    ],
}

}
