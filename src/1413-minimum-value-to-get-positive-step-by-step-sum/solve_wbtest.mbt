///|
test "example 1" {
  assert_eq!(min_start_value([1, -2, -3]), 5)
}

///|
test "example 2" {
  assert_eq!(min_start_value([1, 2, 3]), 1)
}

///|
test "example 3" {
  assert_eq!(min_start_value([-3, -2, -1]), 4)
}
