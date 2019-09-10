plan deployments::test(
  Boolean $should_fail = false,
) {
  if($should_fail) {
    fail("This is a forced failure from the test plan!")
  }
  $test_env_var = system::env('TEST_ENV_VAR')

  return "success message from the test plan. env_var = ${test_env_var}"
}
