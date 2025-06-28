///|
test "Example 1" {
  inspect(
    distance_limited_paths_exist(
      3,
      [[0, 1, 2], [1, 2, 4], [2, 0, 8], [1, 0, 16]],
      [[0, 1, 2], [0, 2, 5]],
    ),
    content="[false, true]",
  )
}

///|
test "Example 2" {
  inspect(
    distance_limited_paths_exist(
      5,
      [[0, 1, 10], [1, 2, 5], [2, 3, 9], [3, 4, 13]],
      [[0, 4, 14], [1, 4, 13]],
    ),
    content="[true, false]",
  )
}
