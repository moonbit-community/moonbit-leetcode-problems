///|
test "example 1" {
  assert_eq(pivot_index([1, 7, 3, 6, 5, 6]), 3)
}

///|
test "example 2" {
  assert_eq(pivot_index([1, 2, 3]), -1)
}

///|
test "example 3" {
  assert_eq(pivot_index([2, 1, -1]), 0)
}
