plan deployments::test(
  TargetSpec $nodes,
  Boolean $should_fail = false,
) {
  if($should_fail) {
    fail("This is a forced failure from the test plan!")
  }

  $target = get_targets($nodes)[0]
  $target.set_var('newly_provisioned', true)
  $targetvars = $target.vars
  return run_command("echo 'Vars for ${$target}: ${$targetvars}'", $target)
}
