fn racecar(target : Int) -> Int {
  let dp : Array[Int] = Array::make(target + 1, 0)
  let mut i = 1
  while i <= target {
    let k = 32 - clz(i) // clz stands for Count Leading Zeros
    if i == (1).lsl(k) - 1 {
      dp[i] = k
    } else {
      dp[i] = dp[(1).lsl(k) - 1 - i] + k + 1
      let mut j = 0
      while j < k {
        dp[i] = min(dp[i], dp[i - (1).lsl(k - 1) + (1).lsl(j)] + k - 1 + j + 2)
        j = j + 1
      }
    }
    i = i + 1
  }
  dp[target]
}

fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn clz(x : Int) -> Int {
  let mut n = 0
  let mut x = x
  while x > 0 {
    x = x / 2
    n = n + 1
  }
  32 - n
}
