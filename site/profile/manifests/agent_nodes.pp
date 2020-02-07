class profile::agent_nodes {
  include dockeragent
  dockeragent::node {
    'puppet2.crash.com':
  }
}
