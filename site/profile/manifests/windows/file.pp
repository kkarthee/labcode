class profile::windows::file (
)
{
  file { 'C:\\temp\\testuser':
    ensure =>  directory,
    owner  =>  'testuser',
    group  =>  'testgroup',
    mode   =>   '0755',
}
  file {'C:\\temp\\testuser\\test.txt':
    ensure  =>  'file',
    owner   =>  'testuser',
    group   =>  'testgroup',
    mode    =>  '0740',
    #    source  =>  'C:\\temp\test',
    require =>   File['C:\\temp\\testuser']
}
}
