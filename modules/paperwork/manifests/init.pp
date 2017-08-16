class paperwork {

	class { '::mysql::server':
  		root_password           => 'strongpassword',
  		remove_default_accounts => true
	}
	
	class { 'nginx': }

	$packages = ['npm', 'zip', 'php7.0-mysql', 'php7.0-fpm', 'curl', 'wget', 'git', 'php7.0-cli', 'php7.0-gd', 'php7.0-mcrypt', 'nodejs', 'nodejs-legacy', 'php-xml']

	package { $packages:
	   ensure => "installed"
	}
	
	service { "nginx":
		ensure => "running",
		enable => "true",
		require => Package["nginx"],
	}

}
