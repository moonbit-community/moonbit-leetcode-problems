///|
test "example 1" {
  assert_eq!(trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6)
}

///|
test "example 2" {
  assert_eq!(trap([4, 2, 0, 3, 2, 5]), 9)
}
