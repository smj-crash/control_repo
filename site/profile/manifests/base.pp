class profile::base {
  package {'htop':
    ensure => present,
  }
  user {'admin':
    ensure => present,
  }
}
