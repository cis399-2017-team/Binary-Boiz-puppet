class paperwork {

	$packages = ['npm', 'zip', 'mysql-server', 'nginx', 'php7.0-mysql', 'php7.0-fpm', 'curl', 'wget', 'git', 'php7.0-cli', 'php7.0-gd', 'php7.0-mcrypt', 'nodejs', 'nodejs-legacy', 'php-xml']

	package { $packages:
	   ensure => "installed"
	}

}
