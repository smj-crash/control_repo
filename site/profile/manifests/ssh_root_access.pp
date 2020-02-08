class profile::ssh_root_access {
  file { '/root/.ssh':
    ensure => directory,
    group => 'root',
    mode => '0700',
    owner => 'root'
  }
  file { '/root/.ssh/authorized_keys':
    ensure => file,
    mode => '0644',
    content => "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIERLOAXQSEGhgX5T0mgSR6IbymfSIXVODFbpKNyfpVlr root@puppet1.crash.com\n"
  }
}
