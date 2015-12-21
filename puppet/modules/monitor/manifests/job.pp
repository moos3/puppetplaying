class monitor::job{
  cron {'update_cron':
    ensure => 'present',
    command => 'puppet-apply --modules /opt/puppet/modules -e  "include monitor::healthcheck"',
    user => 'ubuntu',
    hour => "*/1",
    minute => '0'
  }
}
