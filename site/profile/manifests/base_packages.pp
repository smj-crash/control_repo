class profile::base_packages {

  package { 'htop':
    ensure => "installed",
  }
  
  package { 'mosh':
    ensure => "installed",
  }

  package { 'screen':
    ensure => "installed",
  }

}
