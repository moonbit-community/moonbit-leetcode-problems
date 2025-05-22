test "example 1" {
  inspect!(n_queens(1), content="[[[Q]]]")
}

test "example 2" {
  inspect!(
    n_queens(4),
    content="[[[., Q, ., .], [., ., ., Q], [Q, ., ., .], [., ., Q, .]], [[., ., Q, .], [Q, ., ., .], [., ., ., Q], [., Q, ., .]]]",
  )
}
