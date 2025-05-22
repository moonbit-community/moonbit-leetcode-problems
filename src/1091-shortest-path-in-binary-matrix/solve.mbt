fn shortest_path_binary_matrix(grid : Array[Array[Int]]) -> Int {
  if grid[0][0] == 1 {
    return -1
  }
  let n = grid.length()
  grid[0][0] = 1
  let mut q = @immut/list.T::of([[0, 0]])
  let mut ans = 1
  let mut flag = false
  while not(q.is_empty()) {
    let mut nq = @immut/list.T::of([])
    q.each(
      fn(elem) {
        let (i, j) = (elem[0], elem[1])
        if i == n - 1 && j == n - 1 {
          flag = true
        }
        for x = i - 1; x < i + 1 + 1; x = x + 1 {
          for y = j - 1; y < j + 1 + 1; y = y + 1 {
            if x >= 0 && x < n && y >= 0 && y < n && grid[x][y] == 0 {
              grid[x][y] = 1
              nq = nq.concat(@immut/list.T::of([[x, y]]))
            }
          }
        }
      },
    )
    q = nq
    ans = ans + 1
  }
  if flag {
    ans
  } else {
    -1
  }
}
