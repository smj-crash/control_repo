class profile::base {

  include profile::base_packages
  include profile::ssh_root_access

  user {'admin':
    ensure => present,
  }

}
