class paperwork {

	$packages = ['npm', 'zip', 'mysql-server', 'php7.0-mysql', 'nginx', 'php7.0-fpm', 'curl', 'wget', 'git', 'php7.0-cli', 'php7.0-gd', 'php7.0-mcrypt', 'nodejs', 'nodejs-legacy', 'php-xml']

	package { $packages:
	   ensure => "installed"
	}

	exec { "mysqlpasswd":
        command => "/usr/bin/mysqladmin -u root password cis399",
        notify => [Service["mysql"], Service["nginx"]],
        require => [Package["mysql-server"], Package["nginx"]],
    }

    service { "nginx":
        ensure => "running",
        enable => "true",
        require => Package["nginx"],
    }

    service { "mysql":
        ensure => "running",
        enable => "true",
        require => Package["mysql-server"],
    }

    file { "/etc/nginx/sites-available/default":
        notify => Service["nginx"],
        ensure => "present",
        source => "puppet:///modules/paperwork/nginx.conf",
        owner => "root",
        group => "root",
        mode => 644,
        require => Package["nginx"],
    }

}
