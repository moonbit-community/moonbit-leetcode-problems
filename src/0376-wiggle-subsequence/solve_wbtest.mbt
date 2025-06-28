///|
test "example 1" {
  assert_eq(wiggle_max_length([1, 7, 4, 9, 2, 5]), 6)
}

///|
test "example 2" {
  assert_eq(wiggle_max_length([1, 17, 5, 10, 13, 15, 10, 5, 16, 8]), 7)
}

///|
test "example 3" {
  assert_eq(wiggle_max_length([1, 2, 3, 4, 5, 6, 7, 8, 9]), 2)
}
