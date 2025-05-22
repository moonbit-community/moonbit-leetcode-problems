///|
fn count_battleships(board : Array[Array[Char]]) -> Int {
  let m : Int = board.length()
  let n : Int = board[0].length()
  let mut ans = 0
  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      if board[i][j] == '.' {
        j = j + 1
        continue
      }
      if i > 0 && board[i - 1][j] == 'X' {
        j = j + 1
        continue
      }
      if j > 0 && board[i][j - 1] == 'X' {
        j = j + 1
        continue
      }
      ans = ans + 1
      j = j + 1
    }
    i = i + 1
  }
  ans
}
