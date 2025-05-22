///|
fn exist(board : Array[Array[Char]], word : String) -> Bool {
  let m = board.length()
  let n = board[0].length()
  let dirs = [-1, 0, 1, 0, -1]
  fn dfs(
    i : Int,
    j : Int,
    k : Int,
    board : Array[Array[Char]],
    word : String,
    dirs : Array[Int],
    m : Int,
    n : Int
  ) -> Bool {
    if k == word.length() - 1 {
      return board[i][j] == word[k]
    }
    if board[i][j] != word[k] {
      return false
    }
    let c = board[i][j]
    board[i][j] = '0' // temporarily mark as visited
    let mut u = 0
    while u < 4 {
      let x = i + dirs[u]
      let y = j + dirs[u + 1]
      let ok = x >= 0 && x < m && y >= 0 && y < n
      if ok && board[x][y] != '0' && dfs(x, y, k + 1, board, word, dirs, m, n) {
        return true
      }
      u = u + 1
    }
    board[i][j] = c // reset
    false
  }

  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      if dfs(i, j, 0, board, word, dirs, m, n) {
        return true
      }
      j = j + 1
    }
    i = i + 1
  }
  false
}
