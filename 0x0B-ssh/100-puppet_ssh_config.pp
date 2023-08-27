# using puppet to manipulate config file

file { '/home/ubuntu/.ssh/config':
  ensure  => file,
  content => "
    Host 248528-web-01
        HostName 54.88.28.100
        User ubuntu
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
  ",
  owner   => 'ubuntu',
  group   => 'ubuntu',
  mode    => '0600',
}
