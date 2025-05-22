test "example 1" {
  let mat = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  assert_eq!(diagonal_sum(mat), 25)
}

test "example 2" {
  let mat = [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]]
  assert_eq!(diagonal_sum(mat), 8)
}
