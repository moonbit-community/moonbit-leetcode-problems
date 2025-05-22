test "example 1" {
  let grid : Array[Array[Int]] = [[1, 0], [0, 1]]
  let expected = 0
  assert_eq!(count_servers(grid), expected)
}

test "example 2" {
  let grid : Array[Array[Int]] = [[1, 0], [1, 1]]
  let expected = 3
  assert_eq!(count_servers(grid), expected)
}

test "example 3" {
  let grid : Array[Array[Int]] = [
    [1, 1, 0, 0],
    [0, 0, 1, 0],
    [0, 0, 1, 1],
    [0, 0, 0, 1],
  ]
  let expected = 4
  assert_eq!(count_servers(grid), expected)
}
