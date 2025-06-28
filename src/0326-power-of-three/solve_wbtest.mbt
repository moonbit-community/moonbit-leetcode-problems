///|
test "is 27 power of three" {
  assert_eq(is_power_of_three(27), true)
}

///|
test "is 0 power of three" {
  assert_eq(is_power_of_three(0), false)
}

///|
test "is 1 power of three" {
  assert_eq(is_power_of_three(1), true)
}

///|
test "is 2 power of three" {
  assert_eq(is_power_of_three(2), false)
}

///|
test "is 9 power of three" {
  assert_eq(is_power_of_three(9), true)
}
