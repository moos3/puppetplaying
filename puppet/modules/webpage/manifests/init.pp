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

  file{'/var/www/html/images/looppay.png':
    content => 'puppet:///modules/webpage/looppay.png',
    owner => www-data,
    group => www-data,
    mode => 0644,
  }


}
