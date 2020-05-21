class profile::localmta {

#  package { 'postfix':
#    ensure => present,
#  }

#  service { 'postfix':
#    enable => 'true',
#    ensure => 'running',
#  }

#  include postfix::server
  
  class { '::postfix::server':
    myhostname => "${fqdn}",
    mydomain => "${domain}",
    inet_interfaces => 'localhost',
    mydestination => 'segv.crash.com',
    mailbox_size_limit => '51200000',
    message_size_limit => '10485760',
    submission => true,
  }

}
