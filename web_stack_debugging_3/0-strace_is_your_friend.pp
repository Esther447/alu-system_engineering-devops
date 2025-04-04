# run sed command with puppet to fix the mistake of file name
# class-wp-locale.php instead of class-wp-locale.phpp in wp-settings.php
# Fixes WordPress file permissions and configures Apache to resolve 500 Internal Server Error
exec { 'fix-wordpress':
  command => 'bash -c "sed -i s/class-wp-locale.phpp/class-wp-locale.php/ \
/var/www/html/wp-settings.php; service apache2 restart"',
  path    => '/usr/bin:/usr/sbin:/bin'
}
