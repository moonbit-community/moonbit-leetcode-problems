test "example 1" {
  assert_eq!(min_taps(5, [3, 4, 1, 1, 0, 0]), 1)
}

test "example 2" {
  assert_eq!(min_taps(3, [0, 0, 0, 0]), -1)
}

test "example 3" {
  assert_eq!(min_taps(7, [1, 2, 1, 0, 2, 1, 0, 1]), 3)
}

test "example 4" {
  assert_eq!(min_taps(8, [4, 0, 0, 0, 0, 0, 0, 0, 4]), 2)
}

test "example 5" {
  assert_eq!(min_taps(8, [4, 0, 0, 0, 4, 0, 0, 0, 4]), 1)
}
