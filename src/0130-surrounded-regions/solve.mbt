///|
fn solve(board : Array[Array[Char]]) -> Unit {
  let m = board.length()
  let n = board[0].length()
  let uf = UnionFind::new(m * n + 1)
  let dirs = [-1, 0, 1, 0, -1]
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if board[i][j] == 'O' {
        if i == 0 || i == m - 1 || j == 0 || j == n - 1 {
          uf.p[uf.find(m * n)] = uf.find(i * n + j)
        } else {
          for k = 0; k < 4; k = k + 1 {
            let x = i + dirs[k]
            let y = j + dirs[k + 1]
            if x >= 0 && x < m && y >= 0 && y < n && board[x][y] == 'O' {
              uf.p[uf.find(i * n + j)] = uf.find(x * n + y)
            }
          }
        }
      }
    }
  }
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if board[i][j] == 'O' && uf.find(i * n + j) != uf.find(m * n) {
        board[i][j] = 'X'
      }
    }
  }
}

///|
priv struct UnionFind {
  p : Array[Int]
}

///|
fn UnionFind::new(size : Int) -> UnionFind {
  { p: Array::makei(size, fn(i) { i }) }
}

///|
fn UnionFind::find(self : UnionFind, x : Int) -> Int {
  if self.p[x] != x {
    self.p[x] = self.find(self.p[x])
  }
  self.p[x]
}
