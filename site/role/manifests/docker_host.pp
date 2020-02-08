class role::docker_host {
  include profile::agent_nodes
  include profile::base
  include profile::ssh_root_access
}
