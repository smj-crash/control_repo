class role::app_server {
  include profile::app
  include profile::base
  include profile::ssh_root_access
  include profile::web
}
