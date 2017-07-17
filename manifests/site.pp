node ip-10-0-2-190 {
}
node ip-10-0-2-127 {
}
node ip-10-0-2-242 {
    cron { "puppet update":
        command=> "cd /etc/puppet && git pull -q origin master",
        user   => root,
        minute => "*/5",
    }
}
