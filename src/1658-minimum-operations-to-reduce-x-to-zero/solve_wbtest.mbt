test "example 1" {
  assert_eq!(min_operations([1, 1, 4, 2, 3], 5), 2)
}

test "example 2" {
  assert_eq!(min_operations([5, 6, 7, 8, 9], 4), -1)
}

test "example 3" {
  assert_eq!(min_operations([3, 2, 20, 1, 1, 3], 10), 5)
}
