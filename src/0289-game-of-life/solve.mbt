///|
fn game_of_life(board : Array[Array[Int]]) -> Array[Array[Int]] {
  let m = board.length()
  let n = board[0].length()
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      let mut live = if board[i][j] == 1 { -1 } else { 0 }
      for x = i - 1; x <= i + 1; x = x + 1 {
        for y = j - 1; y <= j + 1; y = y + 1 {
          if x >= 0 && x < m && y >= 0 && y < n && board[x][y] > 0 {
            live = live + 1
          }
        }
      }
      if board[i][j] == 1 && (live < 2 || live > 3) {
        board[i][j] = 2
      } else if board[i][j] == 0 && live == 3 {
        board[i][j] = -1
      }
    }
  }
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if board[i][j] == 2 {
        board[i][j] = 0
      } else if board[i][j] == -1 {
        board[i][j] = 1
      }
    }
  }
  board
}
