///|
test "example 1" {
  assert_eq!(search([4, 5, 6, 7, 0, 1, 2], 0), 4)
}

///|
test "example 2" {
  assert_eq!(search([4, 5, 6, 7, 0, 1, 2], 3), -1)
}

///|
test "example 3" {
  assert_eq!(search([1], 1), 0)
}
