class role::windows {
    include profile::windows::param
    include profile::windows::base
    include profile::windows::user
    include profile::windows::file
    #include profile::windows::acl
    include profile::windows::website
    include profile::windows::archive
}
