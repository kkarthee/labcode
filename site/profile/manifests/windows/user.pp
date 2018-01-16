class profile::windows::user(
)
{
group { 'wingroup':
  ensure =>  present,
}
user { 'winuser':
  ensure     => present,
  comment    => 'test windows user',
  groups     => 'testgroup',
  managehome => true,
  password   =>  'Puppetlabs1'
}
}
