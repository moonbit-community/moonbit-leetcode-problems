///|
test "example 1" {
  assert_eq(decrypt([5, 7, 1, 4], 3), [12, 10, 16, 13])
}

///|
test "example 2" {
  assert_eq(decrypt([1, 2, 3, 4], 0), [0, 0, 0, 0])
}

///|
test "example 3" {
  assert_eq(decrypt([2, 4, 9, 3], -2), [12, 5, 6, 13])
}
