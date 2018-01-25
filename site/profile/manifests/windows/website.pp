class profile::windows::website {
dsc_windowsfeature {'IIS':
    dsc_ensure =>  'present',
    dsc_name   =>  'Web-Server',
}
dsc_windowsfeature{'aspnet45':
    dsc_ensure =>  'Present',
      dsc_name =>  'Web-Asp-Net45',
}
iis_site { 'Test Web Site':
    ensure   =>  'started',
    app_pool =>  'DefaultAppPool',
    ip       =>  '*',
    path     =>  'C:\temp\wwroot',
    port     =>  '80',
    protocol =>  'http',
    ssl      =>  false,
}
}
