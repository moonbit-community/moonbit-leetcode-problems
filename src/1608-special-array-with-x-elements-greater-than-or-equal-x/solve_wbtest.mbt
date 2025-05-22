test "example 1" {
  assert_eq!(special_array([3, 5]), 2)
}

test "example 2" {
  assert_eq!(special_array([0, 0]), -1)
}

test "example 3" {
  assert_eq!(special_array([0, 4, 3, 0, 4]), 3)
}

test "example 4" {
  assert_eq!(special_array([3, 6, 7, 7, 0]), -1)
}
