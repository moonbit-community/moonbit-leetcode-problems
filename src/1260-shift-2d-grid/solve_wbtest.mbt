test "example 1" {
  let grid : Array[Array[Int]] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  let k = 1
  let expected : Array[Array[Int]] = [[9, 1, 2], [3, 4, 5], [6, 7, 8]]
  assert_eq!(shift_grid(grid, k), expected)
}

test "example 2" {
  let grid : Array[Array[Int]] = [
    [3, 8, 1, 9],
    [19, 7, 2, 5],
    [4, 6, 11, 10],
    [12, 0, 21, 13],
  ]
  let k = 4
  let expected : Array[Array[Int]] = [
    [12, 0, 21, 13],
    [3, 8, 1, 9],
    [19, 7, 2, 5],
    [4, 6, 11, 10],
  ]
  assert_eq!(shift_grid(grid, k), expected)
}

test "example 3" {
  let grid : Array[Array[Int]] = [[1]]
  let k = 100
  let expected : Array[Array[Int]] = [[1]]
  assert_eq!(shift_grid(grid, k), expected)
}
