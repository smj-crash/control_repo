node default {
}
node 'puppet1.crash.com' {
  include role::master_server 
}
node 'puppet2.crash.com' {
  include role::docker_host
}

node /^dockerdb/ {
  include role::db_server
}
node /^dockerweb/ {
  include role::app_server
}
