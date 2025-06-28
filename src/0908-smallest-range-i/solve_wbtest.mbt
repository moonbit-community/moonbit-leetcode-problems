///|
test "example 1" {
  assert_eq(smallest_range_i([1, 3, 6], 3), 0)
}

///|
test "example 2" {
  assert_eq(smallest_range_i([0, 10], 2), 6)
}

///|
test "example 3" {
  assert_eq(smallest_range_i([1], 0), 0)
}
