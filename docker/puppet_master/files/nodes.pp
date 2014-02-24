node base {
 file {'basefile':
          path    => '/tmp/basefile',
          ensure  => present,
          mode    => 0640,
          content => "I'm a base file.",
 }
}

node /^api\d\d?.*$/ inherits 'base' {
 notify {"node is api":}
 file {'apifile':
          path    => '/tmp/apifile',
          ensure  => present,
          mode    => 0640,
          content => "I'm an api file.",
 }
}

node /^db\d\d?.*$/ inherits 'base' {
 notify {"node is db":}
 file {'dbfile':
          path    => '/tmp/dbfile',
          ensure  => present,
          mode    => 0640,
          content => "I'm a db file.",
 }
}

node /^mq\d\d?.*$/ inherits 'base' {
 notify {"node is mq":}
 file {'mqfile':
          path    => '/tmp/mqfile',
          ensure  => present,
          mode    => 0640,
          content => "I'm an mq file.",
 }
}
