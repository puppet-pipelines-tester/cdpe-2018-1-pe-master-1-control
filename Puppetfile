mod 'cd4pe',
  :git => 'git@github.com:puppetlabs/puppetlabs-cd4pe.git',
  :ref => 'master'

# Requirements for cd4pe
mod 'puppetlabs-concat', '4.2.1'
mod 'puppetlabs-hocon', '1.0.1'
mod 'puppetlabs-puppet_authorization', '0.5.0'
mod 'puppetlabs-stdlib', '4.25.1'
mod 'puppetlabs-docker', '3.2.0'
mod 'puppetlabs-apt', '6.2.1'
mod 'puppetlabs-translate', '1.1.0'

# Change the source based on the provider
#
require 'socket'
hostname = Socket.gethostname

case hostname
when 'cdpe-2017-3-pe-master-1.delivery.puppetlabs.net', 'cdpe-pe-master-gitlab' # gitlab
  mod 'cd4pe_tests',
    :git => 'http://cdpe-gitlab-test-1.delivery.puppetlabs.net/cdpe_unit_tests/puppetlabs-cd4pe_tests.git',
    :ref => :control_branch
when 'cdpe-2018-1-pe-master-1.delivery.puppetlabs.net', 'cdpe-pe-master-github' # github
  mod 'cd4pe_tests',
    :git => 'git@github.com:puppet-pipelines-tester/puppetlabs-cd4pe_tests.git',
    :ref => :control_branch
when 'cdpe-2018-1-pe-master-2' # bitbucket
  mod 'cd4pe_tests',
    :git => 'ssh://git@cdpe-bitbucket-test-1.delivery.puppetlabs.net:7999/tes/puppetlabs-cd4pe_tests.git',
    :ref => :control_branch
when 'cdpe-2018-1-pe-master-3' # github enterprise
  mod 'cd4pe_tests',
    :git => 'git@52.23.163.232:RDM-Integration-tests/puppetlabs-cd4pe_tests.git',
    :ref => :control_branch
when 'cdpe-pe-master-ado' # ado
  mod 'cd4pe_tests',
    :git => 'https://cd4peAzureDevOpsTest@dev.azure.com/cd4peAzureDevOpsTest/CD4PE%20Azure%20DevOps%20Test%20Project/_git/puppetlabs-cd4pe_tests',
    :ref => :control_branch
else
  raise "Error mapping hostname to cd4pe_tests module source"
end
