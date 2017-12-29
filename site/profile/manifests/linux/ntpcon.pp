class profile::linux::ntpcon (
  $ntp_server = lookup ('ntp_server_list', { merge => unique})
)
class  { 'ntp':
    servers    => $ntp_server,
    autoupdate => false,
    enable     =>  true,
  }
  include ntp::install
  include ntp::service
}

