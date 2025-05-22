test "example 1" {
  let solution = Solution::{ p: [] }
  let board : Array[Array[Char]] = [
    ['X', 'X', 'X', 'X'],
    ['X', 'O', 'O', 'X'],
    ['X', 'X', 'O', 'X'],
    ['X', 'O', 'X', 'X'],
  ]
  Solution::solve(solution, board)
  let expected : Array[Array[Char]] = [
    ['X', 'X', 'X', 'X'],
    ['X', 'X', 'X', 'X'],
    ['X', 'X', 'X', 'X'],
    ['X', 'O', 'X', 'X'],
  ]
  assert_eq!(board, expected)
}

test "example 2" {
  let solution = Solution::{ p: [] }
  let board : Array[Array[Char]] = [['X']]
  Solution::solve(solution, board)
  let expected : Array[Array[Char]] = [['X']]
  assert_eq!(board, expected)
}
