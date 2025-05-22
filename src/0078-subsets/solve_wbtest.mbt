test "example 1" {
  inspect!(
    subsets([1, 2, 3]),
    content="[[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]",
  )
}

test "example 2" {
  inspect!(subsets([0]), content="[[], [0]]")
}
