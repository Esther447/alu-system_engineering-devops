# run sed command with puppet to fix the mistake of file name
# class-wp-locale.php instead of class-wp-locale.phpp in wp-settings.php
# Fixes WordPress file permissions and configures Apache to resolve 500 Internal Server Error
exec { 'fix-wordpress-permissions':
  command => 'chown -R www-data:www-data /var/www/html',
  path    => ['/bin', '/usr/bin'],
  notify  => Service['apache2'],
}

service { 'apache2':
  ensure     => running,
  enable     => true,
  hasrestart => true,
}
