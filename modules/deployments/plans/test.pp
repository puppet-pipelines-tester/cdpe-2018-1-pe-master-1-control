plan deployments::test(
  Boolean $should_fail = false,
) {
  if($should_fail) {
    fail("This is a forced failure from the test plan!")
  }

  return "success message from the test plan"
}
