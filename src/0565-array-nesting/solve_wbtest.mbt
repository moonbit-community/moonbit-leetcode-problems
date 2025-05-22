///|
test "example 1" {
  assert_eq!(array_nesting([5, 4, 0, 3, 1, 6, 2]), 4)
}

///|
test "example 2" {
  assert_eq!(array_nesting([0, 1, 2]), 1)
}
