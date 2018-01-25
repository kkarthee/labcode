class profile::windows::website {
$iis_features = ['Web-WebServer','Web-Scripting-Tools']

iis_feature { $iis_features:
    ensure =>  'present',
}
    -> iis_site { 'Test Webserver':
    ensure          => 'started',
    physicalpath    => 'c:\\temp\\wwwroot',
    applicationpool => 'DefaultAppPool',
    require         => File['webdir'],
    bindings        =>  [
          {
                  'bindinginformation' =>  '*:8080:',
                        'protocol'     =>  'http',
          },
    ],
}

file { 'webdir':
    ensure =>  'directory',
      path =>  'c:\\temp\\wwwroot',
}
}
