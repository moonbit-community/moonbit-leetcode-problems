///|
test "example 1" {
  inspect!(
    subsets_with_dup([1, 2, 2]),
    content="[[], [1], [2], [1, 2], [2, 2], [1, 2, 2]]",
  )
}

///|
test "example 2" {
  inspect!(subsets_with_dup([0]), content="[[], [0]]")
}
