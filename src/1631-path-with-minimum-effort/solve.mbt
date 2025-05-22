///|
fn abs_diff(a : Int, b : Int) -> Int {
  if a > b {
    a - b
  } else {
    b - a
  }
}

///|
fn check(h : Int, heights : Array[Array[Int]]) -> Bool {
  let m = heights.length()
  let n = heights[0].length()
  let vis = Array::make(m, Array::make(n, false))
  let dirs = [-1, 0, 1, 0, -1]
  let q : Array[(Int, Int)] = Array::new()
  q.push((0, 0))
  vis[0][0] = true
  while not(q.is_empty()) {
    let (i, j) = q.pop_exn()
    if i == m - 1 && j == n - 1 {
      return true
    }
    for k = 0; k < 4; k = k + 1 {
      let x = i + dirs[k]
      let y = j + dirs[k + 1]
      if x >= 0 &&
        x < m &&
        y >= 0 &&
        y < n &&
        not(vis[x][y]) &&
        abs_diff(heights[x][y], heights[i][j]) <= h {
        q.push((x, y))
        vis[x][y] = true
      }
    }
  }
  false
}

///|
fn minimum_effort_path(heights : Array[Array[Int]]) -> Int {
  let mut l = 0
  let mut r = 1000000
  while l < r {
    let mid = (l + r) / 2
    if check(mid, heights) {
      r = mid
    } else {
      l = mid + 1
    }
  }
  l
}
