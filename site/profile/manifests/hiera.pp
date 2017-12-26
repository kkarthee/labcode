class  profile::hiera (
)
{
class { 'hiera': 
    hiera_version   =>   '5',
    hiera5_defaults => {'datadir' => '/etc/puppetlabs/code/environments/%{::environment}/data', 'data_hash' => 'yaml_data'},
    hierarchy       =>   [
    {'name' => 'Virtual yaml','path'  =>  'virtual/%{::virtual}.yaml'},
    {'name' => 'Nodes yaml', 'path' =>  'nodes/%{::trusted.certname}.yaml'},
    {'name' => 'OS yaml', 'path' =>  'os/%{::osfamily}.yaml'},
    {'name' => 'Default yaml file', 'path' =>  'global.yaml'},
    ],
    eyaml  => true,
}
}
