test "example_1" {
  let matrix = [[0, 0, 1], [1, 1, 1], [1, 0, 1]]
  assert_eq!(largest_submatrix(matrix), 4)
}

test "example_2" {
  let matrix = [[1, 0, 1, 0, 1]]
  assert_eq!(largest_submatrix(matrix), 3)
}

test "example_3" {
  let matrix = [[1, 1, 0], [1, 0, 1]]
  assert_eq!(largest_submatrix(matrix), 2)
}
