# run sed command with puppet to fix the mistake of file name
# class-wp-locale.php instead of class-wp-locale.phpp in wp-settings.php
# Fixes WordPress file permissions to resolve Apache 500 Internal Server Error
exec { 'fix-wordpress':
  command => 'chown -R www-data:www-data /var/www/html',
  path    => ['/bin', '/usr/bin'],
}
