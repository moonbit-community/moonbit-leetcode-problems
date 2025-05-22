///|
test "example 1" {
  assert_eq!(repeated_n_times([5, 1, 5, 2, 5, 3, 5, 4]), 5)
}

///|
test "example 2" {
  assert_eq!(repeated_n_times([2, 1, 2, 5, 3, 2]), 2)
}

///|
test "example 3" {
  assert_eq!(repeated_n_times([1, 2, 3, 3]), 3)
}
