class profile::agent_nodes {
  include dockeragent
  dockeragent::node {
    'dockerdb.crash.com':
  }
  dockeragent::node {
    'dockerweb.crash.com':
  }
}
