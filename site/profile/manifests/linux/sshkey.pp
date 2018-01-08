class profile::linux::sshkey (
)
{
class ssh {
  @@sshkey { '::hostname':
    type => dsa,
    key  =>  $::sshdsakey,
  }
}
  if $::role == adminserver
  {
  Sshkey <<| |>>
}
}
