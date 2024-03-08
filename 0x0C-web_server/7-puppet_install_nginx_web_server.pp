# Install and configure the nginx package
package { 'nginx':
  ensure => installed,
}

# Set the content of /var/www/html/index.html
file { '/var/www/html/index.html':
  content => 'Holberton School',
  require => Package['nginx'],
}

# Configure the redirection for /redirect_me
file_line { 'redirect_me':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
  notify => Service['nginx'],
}

# Ensure the nginx service is running
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
