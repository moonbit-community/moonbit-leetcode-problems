///|
test "example 1" {
  assert_eq!(search([2, 5, 6, 0, 0, 1, 2], 0), true)
}

///|
test "example 2" {
  assert_eq!(search([2, 5, 6, 0, 0, 1, 2], 3), false)
}
