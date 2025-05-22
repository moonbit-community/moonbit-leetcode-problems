fn dfs(
  balls : Array[Int],
  c : Array[Array[Int]],
  f : Array[Array[Array[Int]]],
  i : Int,
  j : Int,
  diff : Int,
  k : Int,
  n : Int
) -> Int {
  if i >= k {
    if j == 0 && diff == k {
      1
    } else {
      0
    }
  } else if j < 0 {
    0
  } else if f[i][j][diff] != -1 {
    f[i][j][diff]
  } else {
    let mut ans = 0
    for x = 0; x <= balls[i]; x = x + 1 {
      let y = if x == balls[i] { 1 } else if x == 0 { -1 } else { 0 }
      let tmp = dfs(balls, c, f, i + 1, j - x, diff + y, k, n) * c[balls[i]][x]
      ans = ans + tmp
    }
    f[i][j][diff] = ans
    ans
  }
}

fn get_probability(balls : Array[Int]) -> Int {
  let n = balls.fold_left(fn(a, b) { a + b }, init=0) / 2
  let mut mx = 0
  balls.each(fn(x) { mx = @math.maximum(mx, x) })
  let m = @math.maximum(n / 2, mx)
  let c : Array[Array[Int]] = Array::make(m + 1, Array::make(m + 1, 0))
  for i = 0; i <= m; i = i + 1 {
    c[i][0] = 1
    for j = 1; j <= i; j = j + 1 {
      c[i][j] = c[i - 1][j - 1] + c[i - 1][j]
    }
  }
  let k = balls.length()
  let f : Array[Array[Array[Int]]] = Array::make(
    k,
    Array::make(n + 1, Array::make((k / 2).lor(1), -1)),
  )
  let result = dfs(balls, c, f, 0, n, k, k, n)
  result / c[n / 2][n]
}
