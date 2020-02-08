class profile::base {
  include profile::ssh_root_access
  user {'admin':
    ensure => present,
  }
}
