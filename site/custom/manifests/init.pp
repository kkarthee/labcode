class custom {
include custom::infra
file { '/tmp/ntp.conf':
path => '/tmp/ntp.conf',
audit => all,
}
}
#include custom
