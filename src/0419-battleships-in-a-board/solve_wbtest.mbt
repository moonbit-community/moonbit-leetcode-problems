test "example 1" {
  let board : Array[Array[Char]] = [
    ['X', '.', '.', 'X'],
    ['.', '.', '.', 'X'],
    ['.', '.', '.', 'X'],
  ]
  assert_eq!(count_battleships(board), 2)
}

test "example 2" {
  let board : Array[Array[Char]] = [
    ['X', '.', '.', 'X'],
    ['.', 'X', '.', 'X'],
    ['.', '.', '.', 'X'],
  ]
  assert_eq!(count_battleships(board), 3)
}
