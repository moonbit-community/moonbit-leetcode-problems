///|
test "example 1" {
  assert_eq(min_swaps([1, 0, 1, 0, 1]), 1)
}

///|
test "example 2" {
  assert_eq(min_swaps([0, 0, 0, 1, 0]), 0)
}

///|
test "example 3" {
  assert_eq(min_swaps([1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1]), 3)
}
