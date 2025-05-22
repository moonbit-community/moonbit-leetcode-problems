fn max_distance(grid : Array[Array[Int]]) -> Int {
  let n : Int = grid.length()
  let mut q : @immut/list.T[(Int, Int)] = Nil
  // Building the initial queue with land coordinates
  for i = 0; i < n; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if grid[i][j] == 1 {
        q = Cons((i, j), q)
      }
    }
  }
  // Early return conditions
  let mut ans : Int = -1
  if q.length() == 0 || q.length() == n * n {
    return ans
  }
  let dirs : Array[Int] = [-1, 0, 1, 0, -1]
  // Main BFS loop
  while q.length() > 0 {
    let mut size : Int = q.length()
    while size > 0 {
      let (i, j) = q.head_exn() // Simulate queue shift
      q = q.tail()
      for k = 0; k < 4; k = k + 1 {
        let x : Int = i + dirs[k]
        let y : Int = j + dirs[k + 1]
        if x >= 0 && x < n && y >= 0 && y < n && grid[x][y] == 0 {
          grid[x][y] = 1
          q = q.concat(@immut/list.T::of([(x, y)])) // Simulate queue push
        }
      }
      size = size - 1
    }
    ans = ans + 1
  }
  ans
}
