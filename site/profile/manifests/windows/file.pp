class profile::windows::file (
)
{
  file { 'C:\\temp\\usertest':
    ensure =>  directory,
    owner  =>  'usertest',
    group  =>  'testgroup',
    mode   =>   '0755',
}
  file {'C:\\temp\\usertest\\test.txt':
    ensure  =>  'file',
    owner   =>  'usertest',
    group   =>  'testgroup',
    mode    =>  '0740',
    #source  =>  'C:\\temp\\test',
    require =>   File['C:\\temp\\usertest']
}
}
