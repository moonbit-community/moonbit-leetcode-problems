///|
test "example 1" {
  assert_eq!(num_rolls_to_target(1, 6, 3), 1)
}

///|
test "example 2" {
  assert_eq!(num_rolls_to_target(2, 6, 7), 6)
}

///|
test "example 3" {
  assert_eq!(num_rolls_to_target(30, 30, 500), 222616187)
}
