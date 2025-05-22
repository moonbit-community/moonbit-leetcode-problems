test "example 1" {
  assert_eq!(longest_consecutive([100, 4, 200, 1, 3, 2]), 4)
}

test "example 2" {
  assert_eq!(longest_consecutive([0, -1]), 2)
}

test "example 3" {
  assert_eq!(longest_consecutive([9, 1, 4, 7, 3, -1, 0, 5, 8, -1, 6]), 7)
}
