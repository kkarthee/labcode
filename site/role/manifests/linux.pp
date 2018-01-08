class role::linux {
  include profile::linux::package
  include profile::linux::ntpcon
  include profile::linux::sshconf
  include profile::linux::user
  include profile::linux::sshkey
}
