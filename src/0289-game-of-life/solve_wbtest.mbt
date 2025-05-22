test "example 1" {
  let board : Array[Array[Int]] = [[0, 1, 0], [0, 0, 1], [1, 1, 1], [0, 0, 0]]
  let expected : Array[Array[Int]] = [
    [0, 0, 0],
    [1, 0, 1],
    [0, 1, 1],
    [0, 1, 0],
  ]
  assert_eq!(game_of_life(board), expected)
}

test "example 2" {
  let board : Array[Array[Int]] = [[1, 1], [1, 0]]
  let expected : Array[Array[Int]] = [[1, 1], [1, 1]]
  assert_eq!(game_of_life(board), expected)
}
