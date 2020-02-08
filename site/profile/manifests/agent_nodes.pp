class profile::agent_nodes {
  include dockeragent
  dockeragent::node {
    'dockerdb.crash.com':
  }
  dockeragent::node {
    'dockerweb.crash.com':
  }
  host { 'dockerdb.crash.com':
    ensure => present,
    ip     => '172.18.0.2',
  }
  host { 'dockerweb.crash.com':
    ensure => present,
    ip     => '172.18.0.3',
  }
}
