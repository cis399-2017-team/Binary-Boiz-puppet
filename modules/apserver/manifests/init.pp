class apserver {
	
  package { "apache2": 
		ensure => installed,
	}
  
	service { "apache2":
		ensure => running,
		enable => true,
		require => [ Package['apache2'], File["/etc/apache2/apache2.conf"] ],
		subscribe => File["/etc/apache2/apache2.conf"],
		hasstatus => true,
		hasrestart => true,
	}

   file { "apache2.conf":
		ensure => present,
		path => "/etc/apache2/apache2.conf",
 		source => "puppet:///modules/apserver/apache2.conf",
		mode => 0640,
		owner => root,
		group => root,
		require => Package['apache2'],
	}
  
}
