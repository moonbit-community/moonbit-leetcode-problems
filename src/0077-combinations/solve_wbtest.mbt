test "example 1" {
  inspect!(
    combine(4, 2),
    content="[[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]",
  )
}

test "example 2" {
  inspect!(combine(1, 1), content="[[1]]")
}
