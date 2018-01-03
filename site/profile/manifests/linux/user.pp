class profile::linux::user (
  $myuserkey = lookup ( 'profile::linux::user::myuser', { merge => deep } ) ,
  $rusers = lookup ( 'profile::linux::user::rootusers' , { merge     =>  deep } )
)
{
  user { $rusers:
    ensure     => present,
# purge_ssh_keys => true,
    managehome => true,
  }
  ssh_authorized_key { $rusers:
      user =>  $rusers,
      type =>  'rsa',
      key  =>  $myuserkey,
  }
  include sudo
  include sudo::configs
}
