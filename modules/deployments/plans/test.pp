plan deployments::test(
  Optional[TargetSpec] $nodes = undef,
  Boolean $should_fail = false,
  Boolean $sleep = false,
) {
  if($should_fail) {
    fail("This is a forced failure from the test plan!")
  }

  return run_task("facter_task", "cdpe-ia-agent-4.delivery.puppetlabs.net", fact => 'hostname')

  if($sleep) {
    ctrl::sleep(10)
    return "Did sleep!"
  }


  $test_env_var = system::env('TEST_ENV_VAR')
  if($nodes) {
    return run_command("hostname", $nodes)
  } else {
    return "success message from the test plan. env_var = ${test_env_var}"
  }

}
