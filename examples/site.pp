## Exemplo de chamada do site.pp
##
node default {

  class { 'apache': }

  apache::vhost { 'workshop':
    docroot        => '/var/www/workshop',
    docroot_create => true,
    port           => '80',
  }

  class { 'workshop': }

}
