fn count_sub_islands(
  grid1 : Array[Array[Int]],
  grid2 : Array[Array[Int]]
) -> Int {
  let m = grid1.length()
  let n = grid1[0].length()
  let mut count = 0
  fn dfs(
    grid1 : Array[Array[Int]],
    grid2 : Array[Array[Int]],
    i : Int,
    j : Int
  ) -> Bool {
    if i < 0 || i >= m || j < 0 || j >= n || grid2[i][j] == 0 {
      return true
    }
    grid2[i][j] = 0
    let mut is_sub_island = grid1[i][j] == 1
    is_sub_island = dfs(grid1, grid2, i + 1, j) && is_sub_island
    is_sub_island = dfs(grid1, grid2, i - 1, j) && is_sub_island
    is_sub_island = dfs(grid1, grid2, i, j + 1) && is_sub_island
    is_sub_island = dfs(grid1, grid2, i, j - 1) && is_sub_island
    is_sub_island
  }

  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if grid2[i][j] == 1 && dfs(grid1, grid2, i, j) {
        count = count + 1
      }
    }
  }
  count
}

// Test cases
