class users {
    
    group { "CIS399":
	    ensure => present,
	    gid => 0399,
    }
