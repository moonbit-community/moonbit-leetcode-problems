///|
test "example 1" {
  assert_eq!(minimum_jumps([14, 4, 18, 1, 15], 3, 15, 9), 3)
}

///|
test "example 2" {
  assert_eq!(minimum_jumps([8, 3, 16, 6, 12, 20], 15, 13, 11), -1)
}

///|
test "example 3" {
  assert_eq!(minimum_jumps([1, 6, 2, 14, 5, 17, 4], 16, 9, 7), 2)
}
