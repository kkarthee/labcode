class profile::linux::user (
  $myuserkey = lookup ( 'profile::linux::user::myuser' )
)
{
  user { 'myuser':
    ensure         => present,
    purge_ssh_keys => true,
    managehome     => true,
    key            => "$myserkey",
  }
  include sudo
  include sudo::configs
}

