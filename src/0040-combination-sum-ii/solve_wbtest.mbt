test "example 1" {
  inspect!(
    combination_sum2([10, 1, 2, 7, 6, 1, 5], 8),
    content="[[1, 1, 6], [1, 2, 5], [1, 7], [2, 6]]",
  )
}

test "example 2" {
  inspect!(combination_sum2([2, 5, 2, 1, 2], 5), content="[[1, 2, 2], [5]]")
}
