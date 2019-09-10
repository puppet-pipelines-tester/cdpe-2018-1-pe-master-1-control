plan deployments::test(
  TargetSpec $nodes,
  Boolean $should_fail = false,
) {
  if($should_fail) {
    fail("The plan deployment failed!")
  }

  $target = get_targets($nodes)[0]
  $target.set_var('newly_provisioned', true)
  $targetvars = $target.vars
  run_command("echo 'Vars for ${host}: ${$targetvars}'", $host)
}
