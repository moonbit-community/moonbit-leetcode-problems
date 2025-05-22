///|
test "example 1" {
  let heights = [[1, 2, 2], [3, 8, 2], [5, 3, 5]]
  assert_eq!(minimum_effort_path(heights), 2)
}

///|
test "example 2" {
  let heights = [[1, 2, 3], [3, 8, 4], [5, 3, 5]]
  assert_eq!(minimum_effort_path(heights), 1)
}

///|
test "example 3" {
  let heights = [
    [1, 2, 1, 1, 1],
    [1, 2, 1, 2, 1],
    [1, 2, 1, 2, 1],
    [1, 2, 1, 2, 1],
    [1, 1, 1, 2, 1],
  ]
  assert_eq!(minimum_effort_path(heights), 0)
}
