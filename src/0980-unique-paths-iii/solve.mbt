///|
struct GridInfo {
  m : Int
  n : Int
  cnt : Int
  grid : Array[Array[Int]]
  vis : Array[Array[Bool]]
}

///|
fn dfs(info : GridInfo, i : Int, j : Int, k : Int) -> Int {
  if info.grid[i][j] == 2 {
    if k == info.cnt + 1 {
      return 1
    } else {
      return 0
    }
  }
  let mut ans = 0
  let dirs : Array[Int] = [-1, 0, 1, 0, -1]
  let mut h = 0
  while h < 4 {
    let x = i + dirs[h]
    let y = j + dirs[h + 1]
    if x >= 0 &&
      x < info.m &&
      y >= 0 &&
      y < info.n &&
      not(info.vis[x][y]) &&
      info.grid[x][y] != -1 {
      info.vis[x][y] = true
      ans = ans + dfs(info, x, y, k + 1)
      info.vis[x][y] = false
    }
    h = h + 1
  }
  ans
}

///|
fn unique_paths_iii(grid : Array[Array[Int]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  let mut cnt = 0
  let mut x = 0
  let mut y = 0
  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      match grid[i][j] {
        0 => cnt = cnt + 1
        1 => {
          x = i
          y = j
        }
        _ => ()
      }
      j = j + 1
    }
    i = i + 1
  }
  let vis : Array[Array[Bool]] = Array::make(m, Array::make(n, false))
  vis[x][y] = true
  let info = GridInfo::{ m, n, cnt, grid, vis }
  dfs(info, x, y, 0)
}
