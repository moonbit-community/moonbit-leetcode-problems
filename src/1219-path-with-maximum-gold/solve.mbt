///|
fn get_maximum_gold(grid : Array[Array[Int]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  fn dfs(i : Int, j : Int, grid : Array[Array[Int]]) -> Int {
    if i < 0 || i >= m || j < 0 || j >= n || grid[i][j] == 0 {
      0
    } else {
      let v = grid[i][j]
      grid[i][j] = 0

      // Implementing max function since MoonBit does not have built-in min or max.
      fn max(a : Int, b : Int, c : Int, d : Int) -> Int {
        let mut max_val = a
        if b > max_val {
          max_val = b
        }
        if c > max_val {
          max_val = c
        }
        if d > max_val {
          max_val = d
        }
        max_val
      }

      let ans = v +
        max(
          dfs(i - 1, j, grid),
          dfs(i + 1, j, grid),
          dfs(i, j - 1, grid),
          dfs(i, j + 1, grid),
        )
      grid[i][j] = v
      ans
    }
  }

  let mut ans = 0
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      let current = dfs(i, j, grid)
      ans = if current > ans { current } else { ans }
    }
  }
  ans
}
