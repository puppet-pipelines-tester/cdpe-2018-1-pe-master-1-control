plan deployments::newness(
  Optional[TargetSpec] $nodes = undef,
  Boolean $should_fail = false,
  String $boo,
  $bar
) {
  if($should_fail) {
    fail("This is a forced failure from the test plan!")
  }
  $test_env_var = system::env('TEST_ENV_VAR')
  if($nodes) {
    return run_command("hostname", $nodes)
  } else {
    return "success message from the test plan. env_var = ${test_env_var}"
  }

}
