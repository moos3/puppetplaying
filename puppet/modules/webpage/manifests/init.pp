class webpage{

  file{'/var/www/html/index.html':
    content => template('webpage/index.html'),
    owner => www-data,
    group => www-data,
    mode => 0644,
  }

  file{'/var/www/html/images/':
    ensure => directory,
    owner => www-data,
    group => www-data,
    mode => 0644,
  }

  file{'/var/www/html/images/Logo_for_PR.jpg':
    content => 'puppet:///modules/webpage/Logo_for_PR.jpg',
    owner => www-data,
    group => www-data,
    mode => 0644,
  }


}
