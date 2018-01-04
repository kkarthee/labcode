class pe_metrics_dashboard::dashboards::pe_metrics(
  Integer $grafana_port       =  $pe_metrics_dashboard::install::grafana_http_port,
  String $grafana_password    =  $pe_metrics_dashboard::install::grafana_password,
  Boolean $use_dashboard_ssl  =  $pe_metrics_dashboard::install::use_dashboard_ssl,
) {

  if $use_dashboard_ssl {
    $uri = 'https'
  }
  else {
    $uri = 'http'
  }

  grafana_dashboard { 'Archive PuppetDB Performance':
    grafana_url      => "${uri}://localhost:${grafana_port}",
    grafana_user     => 'admin',
    grafana_password => $grafana_password,
    content          => file('pe_metrics_dashboard/PuppetDB_Performance.json'),
    require          => Grafana_datasource['influxdb_pe_metrics'],
  }

  grafana_dashboard { 'Archive PuppetDB Workload':
    grafana_url      => "${uri}://localhost:${grafana_port}",
    grafana_user     => 'admin',
    grafana_password => $grafana_password,
    content          => file('pe_metrics_dashboard/PuppetDB_Workload.json'),
    require          => Grafana_datasource['influxdb_pe_metrics'],
  }

  grafana_dashboard { 'Archive Puppetserver Performance':
    grafana_url      => "${uri}://localhost:${grafana_port}",
    grafana_user     => 'admin',
    grafana_password => $grafana_password,
    content          => file('pe_metrics_dashboard/Puppetserver_Performance.json'),
    require          => Grafana_datasource['influxdb_pe_metrics'],
  }
}
