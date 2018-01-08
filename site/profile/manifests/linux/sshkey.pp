class profile::linux::sshkey (
  $sshrole = $::role
)
{
class ssh {
  @@sshkey { '::hostname':
    type => dsa,
    key  => $::sshdsakey,
    tag  =>  $sshrole,
  }
}
  Sshkey <<| tag == 'adminserver' |>>
}
