$apps_vers = lookup('global::profile::windows::apps_vers', { 'merge' => 'hash', 'default_value' => {}})
$default_params = Hash({ 
provider => 'chocolatey', 
install_options => ['--allow-empty-checksums'], 
require => "Class['chocolatey']", 
})
notice($apps_vers)
notice($default_params)
