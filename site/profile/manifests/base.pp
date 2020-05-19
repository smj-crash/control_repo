class profile::base {

  include profile::base_packages
  include profile::ssh_root_access
  include profile::localmta

  user {'admin':
    ensure => present,
  }

}
