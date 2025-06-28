///|
test "example 1" {
  assert_eq(intersection([4, 9, 5], [9, 4, 9, 8, 4]), [4, 9])
}

///|
test "example 2" {
  assert_eq(intersection([1, 2, 2, 1], [2, 2]), [2])
}

///|
test "example 3" {
  assert_eq(intersection([1, 2, 3], [4, 5, 6]), [])
}
