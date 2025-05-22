test "example 1" {
  assert_eq!(powerful_integers(2, 3, 10), [2, 3, 4, 5, 7, 9, 10])
}

test "example 2" {
  assert_eq!(powerful_integers(3, 5, 15), [2, 4, 6, 8, 10, 14])
}

test "example 3" {
  assert_eq!(powerful_integers(2, 1, 10), [2, 3, 5, 9])
}
