struct Solution {
  mut m : Int
  mut n : Int
  mut matrix : Array[Array[Int]]
  mut f : Array[Array[Int]]
}

fn Solution::longestIncreasingPath(self : Solution) -> Int {
  self.m = self.matrix.length()
  self.n = self.matrix[0].length()
  self.f = Array::make(self.m, Array::make(self.n, 0))
  let mut ans = 0
  let mut i = 0
  while i < self.m {
    let mut j = 0
    while j < self.n {
      ans = max(ans, Solution::dfs(self, i, j))
      j = j + 1
    }
    i = i + 1
  }
  ans
}

fn Solution::dfs(self : Solution, i : Int, j : Int) -> Int {
  if self.f[i][j] != 0 {
    return self.f[i][j]
  }
  let dirs : Array[Int] = [-1, 0, 1, 0, -1]
  let mut k = 0
  while k < 4 {
    let x = i + dirs[k]
    let y = j + dirs[k + 1]
    if x >= 0 && x < self.m && y >= 0 && y < self.n && self.matrix[x][y] > self.matrix[i][j] {
      self.f[i][j] = max(self.f[i][j], Solution::dfs(self, x, y))
    }
    k = k + 1
  }
  self.f[i][j] = self.f[i][j] + 1
  self.f[i][j]
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
