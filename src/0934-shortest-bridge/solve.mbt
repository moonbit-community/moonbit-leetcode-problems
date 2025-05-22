///|
struct Point {
  x : Int
  y : Int
}

///|
fn dfs(
  grid : Array[Array[Int]],
  x : Int,
  y : Int,
  n : Int,
  q : @immut/list.T[Point]
) -> @immut/list.T[Point] {
  let mut q = q
  if x >= 0 && x < n && y >= 0 && y < n && grid[x][y] == 1 {
    grid[x][y] = 2 // Mark as part of the first island
    q = q.concat(@immut/list.of([Point::{ x, y }]))
    let dirs = [-1, 0, 1, 0, -1]
    for k = 0; k < 4; k = k + 1 {
      q = dfs(grid, x + dirs[k], y + dirs[k + 1], n, q)
    }
  }
  q
}

///|
fn shortest_bridge(grid : Array[Array[Int]]) -> Int {
  let n = grid.length()
  let mut q : @immut/list.T[Point] = Nil
  let mut found = false
  for i = 0; i < n && not(found); i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if grid[i][j] == 1 {
        // Perform DFS to find one island and mark it
        q = dfs(grid, i, j, n, q)
        found = true
        break
      }
    }
  }
  let dirs = [-1, 0, 1, 0, -1]
  let mut ans = 0
  while not(q.is_empty()) {
    let mut new_q : @immut/list.T[Point] = Nil
    // Pop each point from the queue and explore its neighbors
    while not(q.is_empty()) {
      let front = q.head_exn()
      q = q.remove_at(0)
      for k = 0; k < 4; k = k + 1 {
        let x = front.x + dirs[k]
        let y = front.y + dirs[k + 1]
        if x >= 0 && x < n && y >= 0 && y < n {
          if grid[x][y] == 1 {
            // Found the shortest path to the other island
            return ans
          } else if grid[x][y] == 0 {
            // Mark as visited and add to the queue for next layer of BFS
            grid[x][y] = 2
            new_q = new_q.concat(@immut/list.of([Point::{ x, y }]))
          }
        }
      }
    }
    ans = ans + 1
    q = new_q
  }
  ans
}
