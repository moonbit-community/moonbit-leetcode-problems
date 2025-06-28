///|
test "valid mountain array test 1" {
  assert_eq(valid_mountain_array([2, 1]), false)
}

///|
test "valid mountain array test 2" {
  assert_eq(valid_mountain_array([3, 5, 5]), false)
}

///|
test "valid mountain array test 3" {
  assert_eq(valid_mountain_array([0, 3, 2, 1]), true)
}

///|
test "valid mountain array test 4" {
  assert_eq(valid_mountain_array([0, 1, 2, 3, 4, 8, 9, 10, 11, 12, 11]), true)
}

///|
test "valid mountain array test 5" {
  assert_eq(valid_mountain_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), false)
}
