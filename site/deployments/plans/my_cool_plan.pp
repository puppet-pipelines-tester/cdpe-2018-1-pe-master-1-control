# This deployment policy will deploy a source commit to the Puppet environment
# associated with the Deployment's configured Node Group. It will then run Puppet
# on all nodes in the environemnt.
#
# @summary This deployment policy will deploy a source commit to the Puppet environment
#          associated with the Deployment's configured node group and then run Puppet.
#
# @param max_node_failure
#     The number of allowed failed Puppet runs that can occur before the Deployment will fail
# @param noop
#     Indicates if the Puppet run should be a noop.
plan deployments::my_cool_plan (
  Integer $max_node_failure = 0,
  Boolean $noop = false,
) {
  return 'my cool plan is very cool'
}
