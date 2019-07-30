# Modulo criado para o workshop de Infra Agil
#
class workshop (

  String $docroot = '/var/www/workshop',

){

  file { 'index.html':
    ensure => file,
    path   => "${docroot}/index.html",
    mode   => '0755',
    source => 'puppet:///modules/workshop/index/index.html',
  }

  file { 'images':
    ensure  => present,
    path    => "${docroot}/images",
    mode    => '0755',
    source  => 'puppet:///modules/workshop/images',
    recurse => true,
  }

}
