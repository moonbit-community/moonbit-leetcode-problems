test "example_1" {
  let mat = [[0, 1], [1, 0]]
  let target = [[1, 0], [0, 1]]
  assert_eq!(can_obtain_by_rotation(mat, target), true)
}

test "example_2" {
  let mat = [[0, 1], [1, 1]]
  let target = [[1, 0], [0, 1]]
  assert_eq!(can_obtain_by_rotation(mat, target), false)
}

test "example_3" {
  let mat = [[0, 0, 0], [0, 1, 0], [1, 1, 1]]
  let target = [[1, 1, 1], [0, 1, 0], [0, 0, 0]]
  assert_eq!(can_obtain_by_rotation(mat, target), true)
}
