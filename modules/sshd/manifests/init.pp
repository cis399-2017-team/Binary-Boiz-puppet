class sshd {

    package { 'openssh-server':
        ensure => latest
    }

    service { 'ssh':
        ensure => 'running',
        enable => true,
        subscribe => File[sshdconfig],
        require => Package['openssh-server'],
    }

    file { 'sshdconfig':
        name => '/etc/ssh/sshd_config',
        notify => Service['ssh'],
        owner => root,
        group => root,
        mode => 644,
        source => 'puppet:///modules/sshd/sshd_config',
        require => Package['openssh-server'],
    }
}
