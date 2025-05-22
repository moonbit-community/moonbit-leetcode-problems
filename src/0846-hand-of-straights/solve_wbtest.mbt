///|
test "example 1" {
  assert_eq!(is_n_straight_hand([1, 2, 3, 6, 2, 3, 4, 7, 8], 3), true)
}

///|
test "example 2" {
  assert_eq!(is_n_straight_hand([1, 2, 3, 4, 5], 4), false)
}
