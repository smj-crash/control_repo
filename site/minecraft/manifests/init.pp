class minecraft (
  $url = 'https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar',
  $installdir = '/opt/minecraft',
) {
  file { $installdir :
    ensure => directory,
  }
  file { "${installdir}/minecraft_server.jar" :
    ensure => present,
    source => $url,
    before => Service['minecraft'],
  }
  package { 'java':
    ensure => present,
  }
  file { "${installdir}/eula.txt" :
    ensure => file,
    content => 'eula=true',
  }
  file { '/etc/systemd/system/minecraft.service' :
    ensure => file,
    content => epp('minecraft/minecraft_service', {
      install_dir => $installdir,
    })
  }
  service { 'minecraft' :
    ensure => running,
    enable => true,
    require => [ Package['java'], File["${installdir}/eula.txt"], File['/etc/systemd/system/minecraft.service'] ]
  }
  
}
