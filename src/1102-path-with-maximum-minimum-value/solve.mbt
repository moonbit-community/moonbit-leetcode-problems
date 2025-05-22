///|
fn find(p : Array[Int], x : Int) -> Int {
  if p[x] != x {
    p[x] = find(p, p[x])
  }
  p[x]
}

///|
fn maximum_minimum_path(grid : Array[Array[Int]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  let p : Array[Int] = Array::make(m * n, 0)
  let q : Array[(Int, Int, Int)] = []
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      q.push((grid[i][j], i, j))
    }
  }
  q.sort_by(fn(a, b) { b.0 - a.0 })
  let dirs = [-1, 0, 1, 0, -1]
  let vis : Array[Array[Bool]] = Array::make(m, Array::make(n, false))
  let mut ans = 0
  let mut k = 0
  while find(p, 0) != find(p, m * n - 1) {
    let (t, i, j) = q[0]
    ans = t
    vis[i][j] = true
    for d = 0; d < 4; d = d + 1 {
      let x = i + dirs[d]
      let y = j + dirs[d + 1]
      if x >= 0 && x < m && y >= 0 && y < n && vis[x][y] {
        p[find(p, i * n + j)] = find(p, x * n + y)
      }
    }
    k = k + 1
  }
  ans
}
