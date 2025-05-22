///|
test "example 1" {
  inspect!(
    generate_trees(3),
    content="[[1, -1, 2, -1, 3], [1, -1, 3, 2], [2, 1, -1, -1, 3], [3, 1, -1, 2], [3, 2, 1]]",
  )
}

///|
test "example 2" {
  inspect!(generate_trees(1), content="[[1]]")
}
