node default {
  include profile::ssh_root_access
}
node 'puppet1.crash.com' {
  include role::master_server 
}
node 'puppet2.crash.com' {
  include role::docker_host
  file { '/root/README':
    ensure => file,
    content => "\n\n\t\tWelcome to ${fqdn}\n\n",
  }
}

node /^dockerdb/ {
  include role::db_server
}
node /^dockermc/ {
  include role::minecraft_server
}
node /^dockerweb/ {
  include role::app_server
}
