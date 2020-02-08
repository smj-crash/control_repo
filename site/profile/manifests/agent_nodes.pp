class profile::agent_nodes {

  include dockeragent
  
  dockeragent::node {
    'dockerdb.crash.com':
  }
  host { 'dockerdb.crash.com':
    ensure => present,
    ip     => '172.18.0.2',
  }
  
  dockeragent::node {
    'dockermc.crash.com':
  }
  host { 'dockermc.crash.com':
    ensure => present,
    ip     => '172.18.0.4',
  }
  
  dockeragent::node {
    'dockerweb.crash.com':
  }
  host { 'dockerweb.crash.com':
    ensure => present,
    ip     => '172.18.0.3',
  }
  
}
