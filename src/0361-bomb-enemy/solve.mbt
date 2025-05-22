///|
fn maxKilledEnemies(grid : Array[Array[Char]]) -> Int {
  let m : Int = grid.length()
  let n : Int = grid[0].length()
  let g : Array[Array[Int]] = Array::make(m, Array::make(n, 0))
  let mut i : Int = 0
  while i < m {
    let mut t : Int = 0
    let mut j : Int = 0
    while j < n {
      match grid[i][j] {
        'W' => t = 0
        'E' => t = t + 1
        _ => ()
      }
      g[i][j] = g[i][j] + t
      j = j + 1
    }
    t = 0
    j = n - 1
    while j >= 0 {
      match grid[i][j] {
        'W' => t = 0
        'E' => t = t + 1
        _ => ()
      }
      g[i][j] = g[i][j] + t
      j = j - 1
    }
    i = i + 1
  }
  let mut j : Int = 0
  while j < n {
    let mut t : Int = 0
    i = 0
    while i < m {
      match grid[i][j] {
        'W' => t = 0
        'E' => t = t + 1
        _ => ()
      }
      g[i][j] = g[i][j] + t
      i = i + 1
    }
    t = 0
    i = m - 1
    while i >= 0 {
      match grid[i][j] {
        'W' => t = 0
        'E' => t = t + 1
        _ => ()
      }
      g[i][j] = g[i][j] + t
      i = i - 1
    }
    j = j + 1
  }
  let mut ans : Int = 0
  i = 0
  while i < m {
    j = 0
    while j < n {
      if grid[i][j] == '0' {
        ans = if g[i][j] > ans { g[i][j] } else { ans }
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}
