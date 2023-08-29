# practice configuring your server with Puppet! Just as you did before, we’d like you to install and configure an Nginx server using 
# puppet instead of Bash. To save time and effort, you should also include resources in your manifest to perform a 
# 301 redirect when querying /redirect_me.

# Installing the package
package { 'nginx':
  ensure => installed,
}

# Configure NGINX server
file { '/var/www/html/index.html':
  content => 'Hello World!',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
}

file_line { 'install':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

# Enable and start NGINX service
service { 'nginx':
  ensure  => 'running',
  require => Package['nginx'],
}
