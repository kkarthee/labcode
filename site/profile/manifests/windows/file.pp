class profile::windows::file (
)
{
  file { 'C:\\temp\\usertest':
    ensure =>  directory,
    owner  =>  'winuser',
    group  =>  'wingroup',
    mode   =>   '0755',
}
  file {'C:\\temp\\usertest\\test.txt':
    ensure  =>  'file',
    owner   =>  'winuser',
    group   =>  'wingroup',
    mode    =>  '0740',
    #source  =>  'C:\\temp\\test',
    require =>   File['C:\\temp\\usertest']
}
}
