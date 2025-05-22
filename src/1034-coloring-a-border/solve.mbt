fn make_matrix(
  rows : Int,
  cols : Int,
  default_value : Int
) -> Array[Array[Int]] {
  let matrix = Array::make(rows, Array::make(cols, 0))
  for i = 0; i < rows; i = i + 1 {
    for j = 0; j < cols; j = j + 1 {
      matrix[i][j] = default_value
    }
  }
  matrix
}

fn color_border(
  grid : Array[Array[Int]],
  row : Int,
  col : Int,
  color : Int
) -> Array[Array[Int]] {
  let m = grid.length()
  let n = grid[0].length()
  let vis = make_matrix(m, n, 0)
  let dirs = [-1, 0, 1, 0, -1]
  fn dfs(
    i : Int,
    j : Int,
    c : Int,
    vis : Array[Array[Int]],
    grid : Array[Array[Int]],
    dirs : Array[Int],
    m : Int,
    n : Int,
    color : Int
  ) {
    vis[i][j] = 1
    for k = 0; k < 4; k = k + 1 {
      let x = i + dirs[k]
      let y = j + dirs[k + 1]
      if x >= 0 && x < m && y >= 0 && y < n {
        if vis[x][y] == 0 {
          if grid[x][y] == c {
            dfs(x, y, c, vis, grid, dirs, m, n, color)
          } else {
            grid[i][j] = color
          }
        }
      } else {
        grid[i][j] = color
      }
    }
  }

  dfs(row, col, grid[row][col], vis, grid, dirs, m, n, color)
  grid
}
