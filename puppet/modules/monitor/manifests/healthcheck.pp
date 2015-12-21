class monitor::healthcheck{

  file {'/var/www/':
    ensure => 'directory',
    owner => www-data,
    group => www-data,
    mode => 0644,
  }

  file {'/var/www/html':
    ensure => 'directory',
    owner => www-data,
    group => www-data,
    mode => 0644,
  }

  $ipAddress= '18.90.90.1'
  $publicIPAddress= '8.8.8.8'
  $hostname= 'beerdog'

  file{'/var/www/html/healthcheck.html':
    content => template('monitor/healthcheck.html.erb'),
    owner => www-data,
    group => www-data,
    mode => 0644,

  }
}
