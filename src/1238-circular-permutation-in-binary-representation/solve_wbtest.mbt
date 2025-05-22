test "example 1" {
  assert_eq!(circular_permutation(2, 3), [3, 2, 0, 1])
}

test "example 2" {
  assert_eq!(circular_permutation(3, 2), [2, 6, 7, 5, 4, 0, 1, 3])
}
