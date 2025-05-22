///|
test "Example 1" {
  inspect!(min_swaps([1, 0, 0, 1, 0, 1], 2), content="1")
}

///|
test "Example 2" {
  inspect!(min_swaps([1, 0, 0, 0, 0, 0, 1, 1], 3), content="5")
}

///|
test "Example 3" {
  inspect!(min_swaps([1, 1, 0, 1], 2), content="0")
}
