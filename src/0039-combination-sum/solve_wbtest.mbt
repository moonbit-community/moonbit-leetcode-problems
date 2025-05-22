test "example 1" {
  inspect!(combination_sum([2, 3, 6, 7], 7), content="[[2, 2, 3], [7]]")
}

test "example 2" {
  inspect!(
    combination_sum([2, 3, 5], 8),
    content="[[2, 2, 2, 2], [2, 3, 3], [3, 5]]",
  )
}

test "example 3" {
  inspect!(combination_sum([2], 1), content="[]")
}
