fn min_steps(n : Int) -> Int {
  let dp : Array[Int] = Array::make(n + 1, 0)
  for i = 0; i < n + 1; i = i + 1 {
    dp[i] = i
  }
  dp[1] = 0
  for i = 2; i < n + 1; i = i + 1 {
    let mut j = 2
    while j * j <= i {
      if i % j == 0 {
        dp[i] = min(dp[i], dp[i / j] + j)
      }
      j = j + 1
    }
  }
  dp[n]
}

fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}
