class role::linux {
  include profile::linux::package
  include profile::linux::ntpcon
}
