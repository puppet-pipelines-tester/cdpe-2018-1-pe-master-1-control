class role::example {
  notify {'This is production Sparta!':}

  file { 'some-file':
       path => '/tmp/some-file',
       content => 'Hi there',
       ensure => present,
  }
}
