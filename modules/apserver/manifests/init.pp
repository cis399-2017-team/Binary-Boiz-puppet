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
  
  file { '/var/www/html': 
		ensure => directory,
		require => Package['apache2'],
		recurse => true,
		owner => root,
		group => root,
		source => "puppet:///modules/apache/html/",
		mode => 0644,
	} 

   file { "apache2.conf":
		ensure => present,
		path => "/etc/apache2/apache2.conf",
 		source => "puppet:///modules/apache/apache2.conf",
		mode => 0640,
		owner => root,
		group => root,
		require => Package['apache2'],
	}
  
}
