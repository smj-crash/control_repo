node 'puppet2.crash.com' {
    file { '/root/README':
        ensure  => file,
        content => 'This is a README file',
        owner => 'root',
        group => 'bin',
    }
    file { '/root/README':
        ensure => file,
    }
}
