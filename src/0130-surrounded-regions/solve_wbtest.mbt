///|
test "example 1" {
  let board : Array[Array[Char]] = [
    ['X', 'X', 'X', 'X'],
    ['X', 'O', 'O', 'X'],
    ['X', 'X', 'O', 'X'],
    ['X', 'O', 'X', 'X'],
  ]
  solve(board)
  let expected : Array[Array[Char]] = [
    ['X', 'X', 'X', 'X'],
    ['X', 'X', 'X', 'X'],
    ['X', 'X', 'X', 'X'],
    ['X', 'O', 'X', 'X'],
  ]
  assert_eq(board, expected)
}

///|
test "example 2" {
  let board : Array[Array[Char]] = [['X']]
  solve(board)
  let expected : Array[Array[Char]] = [['X']]
  assert_eq(board, expected)
}
