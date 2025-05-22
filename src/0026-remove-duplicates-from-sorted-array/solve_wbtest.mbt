test "example 1" {
  assert_eq!(remove_duplicates([1, 1, 2]), 2)
}

test "example 2" {
  assert_eq!(remove_duplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]), 5)
}

// Additional Tests

test "no duplicates" {
  assert_eq!(remove_duplicates([1, 2, 3, 4, 5]), 5)
}

test "all duplicates" {
  assert_eq!(remove_duplicates([1, 1, 1, 1, 1]), 1)
}
