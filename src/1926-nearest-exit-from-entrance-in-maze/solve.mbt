struct Point {
  row : Int
  col : Int
}

fn nearest_exit(maze : Array[Array[Char]], entrance : Array[Int]) -> Int {
  let m = maze.length()
  let n = maze[0].length()
  let entrance_row = entrance[0]
  let entrance_col = entrance[1]
  let directions = [[-1, 0], [1, 0], [0, -1], [0, 1]]
  let queue = @queue.T::new()
  queue.push(Point::{ row: entrance_row, col: entrance_col })
  let visited = Array::make(m, Array::make(n, false))
  visited[entrance_row][entrance_col] = true
  let mut steps = 0
  while queue.length() > 0 {
    let size = queue.length()
    for i = 0; i < size; i = i + 1 {
      let current = queue.pop_exn()
      let row = current.row
      let col = current.col
      if (row == 0 || row == m - 1 || col == 0 || col == n - 1) && not(
        row == entrance_row && col == entrance_col,
      ) {
        return steps
      }
      for d = 0; d < directions.length(); d = d + 1 {
        let dir = directions[d]
        let new_row = row + dir[0]
        let new_col = col + dir[1]
        if new_row >= 0 && new_row < m && new_col >= 0 && new_col < n && not(
          visited[new_row][new_col] && maze[new_row][new_col] == '.',
        ) {
          visited[new_row][new_col] = true
          queue.push(Point::{ row: new_row, col: new_col })
        }
      }
    }
    steps = steps + 1
  }
  return -1
}

// Test cases
