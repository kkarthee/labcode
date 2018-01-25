class profile::windows::website {
# dsc_windowsfeature {'IIS':

# dsc_ensure =>  'present',

# dsc_name   =>  'Web-Server',

# }

# dsc_windowsfeature{'aspnet45':

# dsc_ensure =>  'Present',

# dsc_name =>  'Web-Asp-Net45',

# }

# iis_site { 'Test Web Site':

# ensure   =>  'started',

# app_pool =>  'DefaultAppPool',

# ip       =>  '*',

# path     =>  'C:\temp\wwroot',

# port     =>  '80',

# protocol =>  'http',

# ssl      =>  false,

# }
$iis_features = ['Web-WebServer','Web-Scripting-Tools']

iis_feature { $iis_features:
    ensure =>  'present',
}
    -> iis_site { 'Test Webserver':
    ensure          =>  'started',
    physicalpath    =>  'c:\\temp\\wwwroot',
    applicationpool =>  'DefaultAppPool',
    require         =>  File['webdir'],
}

file { 'webdir':
    ensure =>  'directory',
      path =>  'c:\\temp\\wwwroot',
}
}
