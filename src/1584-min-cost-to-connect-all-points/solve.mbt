fn abs_diff(a : Int, b : Int) -> Int {
  if a > b {
    a - b
  } else {
    b - a
  }
}

fn min_cost_connect_points(points : Array[(Int, Int)]) -> Int {
  let n = points.length()
  let g : Array[Array[Int]] = Array::make(n, Array::make(n, 0))
  let dist : Array[Int] = Array::make(n, @int.max_value)
  let vis : Array[Bool] = Array::make(n, false)
  for i = 0; i < n; i = i + 1 {
    let (x1, y1) = points[i]
    for j = i + 1; j < n; j = j + 1 {
      let (x2, y2) = points[j]
      let t = abs_diff(x1, x2) + abs_diff(y1, y2)
      g[i][j] = t
      g[j][i] = t
    }
  }
  let mut ans = 0
  dist[0] = 0
  for i = 0; i < n; i = i + 1 {
    let mut j = -1
    for k = 0; k < n; k = k + 1 {
      if not(vis[k]) && (j == -1 || dist[k] < dist[j]) {
        j = k
      }
    }
    vis[j] = true
    ans = ans + dist[j]
    for k = 0; k < n; k = k + 1 {
      if not(vis[k]) {
        if dist[k] > g[j][k] {
          dist[k] = g[j][k]
        }
      }
    }
  }
  ans
}
