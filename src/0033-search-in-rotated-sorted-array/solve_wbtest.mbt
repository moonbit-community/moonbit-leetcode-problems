test "example 1" {
  assert_eq!(search([5, 1, 3], 5), 0)
}

test "example 2" {
  assert_eq!(search([1], 0), -1)
}

test "example 3" {
  assert_eq!(search([4, 5, 6, 7, 8, 1, 2, 3], 8), 4)
}
