# using puppet to manipulate config file

file { '/etc/ssh/ssh_config':
  ensure  => file,
  content => "
    Host 248528-web-01
        HostName 54.88.28.100
        User ubuntu
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
  ",
  owner   => 'root',
  group   => 'root',
  mode    => '0600',
}
