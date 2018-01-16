class profile::windows::acl(
)
{
acl { 'c:/temp/usertest':
    target                     =>  'c:/temp/usertest',
    purge                      =>  false,
    permissions                =>  [
    { identity => 'winuser', rights => ['full'], perm_type=> 'allow', child_types => 'all', affects => 'all' },
    { identity => 'wingroup', rights => ['read'], perm_type=> 'allow', child_types => 'all', affects => 'all' }
    ],
    owner                      =>  'winuser', #Creator_Owner specific, doesn't manage unless specified
    group                      =>  'wingroup', #Creator_Group specific, doesn't manage unless specified
    inherit_parent_permissions =>  true,
}
}
