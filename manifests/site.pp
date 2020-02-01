node 'puppet2.crash.com' {
    file { '/root/README':
        ensure => file,
    }
}
