node base {
file {'basefile':
          path    => '/tmp/basefile',
          ensure  => present,
          mode    => 0640,
          content => "I'm a base file.",
        }
}

node /^api\d\d?.*$/ inherits 'base' {
file {'apifile':
          path    => '/tmp/apifile',
          ensure  => present,
          mode    => 0640,
          content => "I'm an api file.",
        }
}

node /^db\d\d?.*$/ inherits 'base' {
file {'dbfile':
          path    => '/tmp/dbfile',
          ensure  => present,
          mode    => 0640,
          content => "I'm a db file.",
        }
}
