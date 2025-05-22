///|
test "example_1" {
  let trees = [[1, 1], [2, 2], [2, 0], [2, 4], [3, 3], [4, 2]]
  let result = find_min_circle(trees)
  assert_eq!(result, [2.00000, 2.00000, 2.00000])
}

///|
test "example_2" {
  let trees = [[1, 2], [2, 2], [4, 2]]
  let result = find_min_circle(trees)
  assert_eq!(result, [2.50000, 2.00000, 1.50000])
}
