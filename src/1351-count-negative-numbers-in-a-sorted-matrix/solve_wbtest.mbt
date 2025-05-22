test "example 1" {
  let grid : Array[Array[Int]] = [
    [4, 3, 2, -1],
    [3, 2, 1, -1],
    [1, 1, -1, -2],
    [-1, -1, -2, -3],
  ]
  let expected = 8
  assert_eq!(count_negatives(grid), expected)
}

test "example 2" {
  let grid : Array[Array[Int]] = [[3, 2], [1, 0]]
  let expected = 0
  assert_eq!(count_negatives(grid), expected)
}

test "example 3" {
  let grid : Array[Array[Int]] = [[-1]]
  let expected = 1
  assert_eq!(count_negatives(grid), expected)
}
