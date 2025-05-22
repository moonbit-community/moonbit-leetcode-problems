///|
fn maximal_network_rank(n : Int, roads : Array[(Int, Int)]) -> Int {
  fn fill_array(n : Int, value : Int) -> Array[Int] {
    let arr = Array::make(n, value)
    let len = n
    for i = 0; i < len; i = i + 1 {
      arr[i] = value
    }
    arr
  }

  fn make_matrix(n : Int, value : Int) -> Array[Array[Int]] {
    let matrix = Array::make(n, fill_array(n, value))
    for i = 0; i < n; i = i + 1 {
      matrix[i] = fill_array(n, value)
    }
    matrix
  }

  fn max(a : Int, b : Int) -> Int {
    if a > b {
      a
    } else {
      b
    }
  }

  let g = make_matrix(n, 0)
  let cnt = fill_array(n, 0)
  for i = 0; i < roads.length(); i = i + 1 {
    let road = roads[i]
    let a = road.0
    let b = road.1
    g[a][b] = 1
    g[b][a] = 1
    cnt[a] = cnt[a] + 1
    cnt[b] = cnt[b] + 1
  }
  let mut ans = 0
  for a = 0; a < n; a = a + 1 {
    for b = a + 1; b < n; b = b + 1 {
      ans = max(ans, cnt[a] + cnt[b] - g[a][b])
    }
  }
  ans
}
