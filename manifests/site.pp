node ip-10-0-2-14 {
    include sshd
    include paperwork  
}
node ip-10-0-2-190 {
    include sshd
    include apserver
    include users
}
node ip-10-0-2-127 {
    include sshd  
}
node ip-10-0-2-242 {
    include sshd
    
    cron { "puppet update":
        command=> "cd /etc/puppet && git pull -q origin master",
        user   => root,
        minute => "*/5",
    }
}
