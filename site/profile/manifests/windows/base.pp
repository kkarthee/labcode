class profile::windows::base {
  include profile::windows::bguser
  #  include profile::windows::choco
  include profile::windows::npp
  include profile::windows::security
}
