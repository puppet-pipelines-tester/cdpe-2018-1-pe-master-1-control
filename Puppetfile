def default_branch(default)
  begin
    match = /(.+)_(cdpe|cdpe_ia)_\d+$/.match(@librarian.environment.name)
    match ? match[1]:default
  rescue
    default
  end
end

mod 'puppetlabs-cd4pe_tests',
  :git => 'ssh://git@cdpe-bitbucket-test-1.delivery.puppetlabs.net:7999/tes/puppetlabs-cd4pe_tests.git',
  :branch => :control_branch, 
  :default_branch => default_branch('master')

mod 'cd4pe',
  :git => 'git@github.com:puppetlabs/puppetlabs-cd4pe.git',
  :ref => 'master'
mod 'clamps',
  :git => 'https://github.com/puppetlabs/clamps.git',
  :ref => 'master'
mod 'cd4pe_jobs',
  :git => 'https://github.com/puppetlabs/puppetlabs-cd4pe_jobs.git',
  :ref => 'master'

# Requirements for cd4pe
mod 'puppetlabs-concat', '4.2.1'
mod 'puppetlabs-hocon', '1.0.1'
mod 'puppetlabs-puppet_authorization', '0.5.0'
mod 'puppetlabs-stdlib', '4.25.1'
mod 'puppetlabs-docker', '3.2.0'
mod 'puppetlabs-apt', '6.2.1'
mod 'puppetlabs-translate', '1.1.0'
mod 'npwalker-pe_databases'
mod 'puppetlabs-cron_core'
mod 'puppetlabs-postgresql'
