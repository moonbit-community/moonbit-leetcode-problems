fn find_ball(grid : Array[Array[Int]]) -> Array[Int] {
  let m = grid.length()
  let n = grid[0].length()
  let answer = Array::make(n, 0)
  fn simulate(start_column : Int, grid : Array[Array[Int]]) -> Int {
    let m = grid.length()
    let n = grid[0].length()
    let mut row = 0
    let mut column = start_column
    while row < m {
      let next_column = column + grid[row][column]
      if next_column < 0 || next_column >= n || grid[row][column] != grid[row][next_column] {
        return -1
      }
      row = row + 1
      column = next_column
    }
    return column
  }

  for i = 0; i < n; i = i + 1 {
    answer[i] = simulate(i, grid)
  }
  return answer
}
