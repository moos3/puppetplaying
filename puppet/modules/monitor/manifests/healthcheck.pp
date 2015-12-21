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
 
  if $ec2_local_ipv4{
  	$ipAddress= $ec2_local_ipv4
  } else {
    $ipAddress = $ipaddress_eth0
  }
  if $ec2_public_ipv4 {
  	$publicIPAddress= $ec2_public_ipv4
  } else {
	$publicIPAddress= ''	
  }
  if $ec2_hostname {
	$myhostname = $ec2_public_hostname
  } else {
  	$myhostname= $hostname
  }
  file{'/var/www/html/healthcheck.html':
    content => template('monitor/healthcheck.html.erb'),
    owner => www-data,
    group => www-data,
    mode => 0644,

  }
}
