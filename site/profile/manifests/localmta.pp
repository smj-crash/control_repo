class profile::localmta {

  package { 'postfix':
    ensure => present,
  }

  service { 'postfix':
    enable => 'true',
    ensure => 'running',
  }

#  include postfix::server
  
  postfix::server {
    myhostname => 'puppet3.crash.com',
    mydomain => '${domain}',
    inet_interfaces => 'localhost',
    mydestination => 'segv.crash.com',
    message_size_limit => '10485760',
    submission => true,
  }

}
