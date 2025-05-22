///|
test "example 1" {
  let board : Array[Array[Char]] = [
    ['A', 'B', 'C', 'E'],
    ['S', 'F', 'C', 'S'],
    ['A', 'D', 'E', 'E'],
  ]
  let word = "ABCCED"
  assert_eq!(exist(board, word), true)
}

///|
test "example 2" {
  let board : Array[Array[Char]] = [
    ['A', 'B', 'C', 'E'],
    ['S', 'F', 'C', 'S'],
    ['A', 'D', 'E', 'E'],
  ]
  let word = "SEE"
  assert_eq!(exist(board, word), true)
}

///|
test "example 3" {
  let board : Array[Array[Char]] = [
    ['A', 'B', 'C', 'E'],
    ['S', 'F', 'C', 'S'],
    ['A', 'D', 'E', 'E'],
  ]
  let word = "ABCB"
  assert_eq!(exist(board, word), false)
}
