///|
test "example 1" {
  assert_eq(is_long_pressed_name("alex", "aaleex"), true)
}

///|
test "example 2" {
  assert_eq(is_long_pressed_name("saeed", "ssaaedd"), false)
}

///|
test "example 3" {
  assert_eq(is_long_pressed_name("leelee", "lleeelee"), true)
}
