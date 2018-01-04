 class custom::infra (
$pe_curl_metric_server = lookup ('pe_metric_curl_cron_jobs::puppetserver_hosts'),
#pe_metric_curl_cron_jobs::puppet_server_metrics_ensure = present,
)
{
class { 'pe_metric_curl_cron_jobs':
  puppetserver_hosts => $pe_curl_metric_server,
}
}
node 'pe-master-testlab.support.puppetlabs.net','pe-cm1-testlab.support.puppetlabs.net' {
  include custom:infra
}
