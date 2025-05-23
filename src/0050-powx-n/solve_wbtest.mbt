///|
test "example 1" {
  assert_eps!(my_pow(2.0, 10), 1024.0)
}

///|
test "example 2" {
  assert_eps!(my_pow(2.1, 3), 9.261)
}

///|
test "example 3" {
  assert_eps!(my_pow(2.0, -2), 0.25)
}

// custom assertion function
///|
fn assert_eps(result : Double, expect : Double) -> Unit! {
  let delta = result - expect
  if (delta < 1.0e-6 && delta >= 0.0) || (delta < 0.0 && delta > -1.0e-6) {
    ()
  } else {
    fail!("Assertion failed: \{result}, expecting \{expect}")
  }
}
