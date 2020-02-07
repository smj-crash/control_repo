node default {
}
node 'puppet1.crash.com' {
 include role::master_server 
}
node 'puppet2.crash.com' {
 include role::docker_host
}
