///|
fn min_swaps(grid : Array[Array[Int]]) -> Int {
  let n = grid.length()
  let pos : Array[Int] = Array::make(n, -1)
  for i = 0; i < n; i = i + 1 {
    for j = n - 1; j >= 0; j = j - 1 {
      if grid[i][j] == 1 {
        pos[i] = j
        break
      }
    }
  }
  let mut ans = 0
  for i = 0; i < n; i = i + 1 {
    let mut k = -1
    for j = i; j < n; j = j + 1 {
      if pos[j] <= i {
        ans = ans + j - i
        k = j
        break
      }
    }
    if k == -1 {
      return -1
    }
    while k > i {
      // Swapping pos[k] and pos[k - 1]
      let temp = pos[k]
      pos[k] = pos[k - 1]
      pos[k - 1] = temp
      k = k - 1
    }
  }
  ans
}
