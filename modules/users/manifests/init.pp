class users {
    
    group { "CIS399":
	    ensure => present,
	    gid => 0399,
    }

    user { "stevev":
	    ensure => present,
	    gid => 0399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    
    ssh_authorized_key { "stevev":
	    user    => "stevev",
	    type    => ssh-rsa,
	    key     => "AAAAB3NzaC1yc2EAAAADAQABAAACAQDN0n7TZj/XUCs4ywvPLHfAFTHHkzFbxTW5GuHXMWIyrb7M84ySFSswd2n45Kh2IQey7sd97V0dj/EENKvy+5FCyyTTLWmnTXzTLMeb5qpV6Xful5vt6KjHd41ZAT2pKoK+yAjcTDRdMFq0QYDUEFug8ETv1/wPsJPgCLAlp0kJWJq8Q7AqmdCs+NilLvKKZUu62AMWNdNwDDBHCKgtn8TzgsEIxOgFgrrAXz+UdW5z4DLcmGx7wkdAAM0Q18ohC6L0WayiceGHuC/vHfHNklHOWoBF5L8YWRdGKEN40LMiu//31uuXrmV3ZrudbyhsRcWXr5dukbqD43PpsBzIOo3080FyZJWeLOpbE/6VsrNNlOtroKnuO+mIWOVsBQCH5R3UPwwxTtf8yyO7GvNm2HjRBgGLGXql3RhqIpTEVUfzXqadX+b/v8ChuBjYtegr2CWhs85qGj/2gNanZjfE8NJVa8OymuiQi5boRGsoDKXY1F7hnaZNL4CYyW1yAp44evDyohp/E9+YY3I/RdUfZ/apelHIVNXL4bx25oPUT7/jqqJi3RcyDQugZLH55QWiE1NkFqJqwTif6b6hcsdhIlVuNhzuXKneTm74PCQ13Ui1nY9mx00wjnG6bXiHLy1mKXshl7i8LX9aK7hAzTeSWPnKJpJ2+UeLrywEp3FKsRbt1Q==",
    }
    
    user { "aziz94test":
	    ensure => present,
	    gid => 0399,
	    managehome => true,
	    shell => "/bin/bash",
    }
    
    ssh_authorized_key { "aziz94test":
	    user    => "aziz94test",
	    type    => ssh-rsa,
	    key     => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCAREpbm7qQpO7aQFsHxv0yFo3p8587EOLh4fo2LOWgRyzNTJV5DvmV2bltNrwhX+2pD7tv3ZVD14yFJH6mTbPemtanTkiInABqy2HCJbBgxtnGXss7nZgdjF/tUlHVSDvF2pJCJgYMvyvi7A+VV7eGN3FLAFIffNKzhkNF5Ky1DV4zsK4WKd2f+EGxKmt3G5mKL6pAs7UHafhUmf/jdLXZr50mMfw0F12EA5T3+USdtzV6/Ht5omy3TIWRj29rl/XOgTQQTkoU1ybpJXg52HU3nr0UxT33Glyy1hFQYaM019cpa2+z7HKehqF1aC6ae3Lxg8sPEntZXM18T/cGBNNl",
    }
    
    
