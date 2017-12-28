class profile::windows::bguser {
  user { 'bguser':
    ensure     => present,
    name       => 'bguser',
    comment    => 'break the glass user - Use when required ',
    groups     => ['BUILTIN\Administrators'],
    managehome => true,
    password   =>  'puppetlabs',
  }
}
