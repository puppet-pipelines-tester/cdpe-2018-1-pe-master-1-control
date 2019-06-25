class profile::base {
  #the base profile should include component modules that will be on all nodes
  notify {"profile::base": }

  file { "/tmp/sensitive":
    ensure => file,
    content => Sensitive("totaly not sensitive")
  }

  class { 'clamps': 
    num_dynamic_files => 1,
    num_static_files  => 1,
  }

  class { 'clamps::agent': 
    environment => 'impact_analysis_tests_staging',
    num_dynamic_files => 1,
    num_static_files  => 1,
  }

  file { "/home/root":
    ensure => directory
  }

  if $facts['id'] =~ /^user/ {
    class { 'clamps': 
      num_dynamic_files => 1,
      num_static_files  => 1,
    }
  } else {
    class { 'clamps::agent': 
    }
  }

  file { '/tmp/diff-file-params':
    path => "/tmp/${facts['id']}",
    content => 'diff on each user',
  }
>>>>>>> f8d0eb3... (maint) Add clamps for more resource / nodes tests
}
