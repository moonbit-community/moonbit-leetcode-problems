///|
test "example 1" {
  assert_eq!(find_min_moves([1, 0, 5]), 3)
}

///|
test "example 2" {
  assert_eq!(find_min_moves([0, 3, 0]), 2)
}

///|
test "example 3" {
  assert_eq!(find_min_moves([0, 2, 0]), -1)
}
