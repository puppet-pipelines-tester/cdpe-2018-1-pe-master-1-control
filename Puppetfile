# Requirements for cd4pe
mod 'puppetlabs-concat', '4.2.1'
mod 'puppetlabs-hocon', '1.0.1'
mod 'puppetlabs-puppet_authorization', '0.5.0'
mod 'puppetlabs-stdlib', '4.25.1'
mod 'puppetlabs-docker', '3.2.0'
mod 'puppetlabs-apt', '6.2.1'
mod 'puppetlabs-translate', '1.1.0'
mod 'puppetlabs-cd4pe_test',
  :git => 'git@github.com:puppetlabs/puppetlabs-cd4pe_test.git', 
  :ref => :control_branch, 
  :default => default_branch('master')

def default_branch(default)
  begin
    regex = /(.+)_(cdpe|cdpe_ia)_\d+$/
    environment = @librarian.environment.name
    match = regex.match(environment)
    match ? match[1]:default
  rescue
    default
  end
end
