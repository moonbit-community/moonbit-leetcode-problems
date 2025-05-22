fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}

fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}

fn min_difficulty(job_difficulty : Array[Int], d : Int) -> Int {
  let n = job_difficulty.length()
  let inf = 2_0000_0000
  let f : Array[Array[Int]] = Array::make(n + 1, Array::make(d + 1, inf))
  f[0][0] = 0
  for i = 1; i <= n; i = i + 1 {
    for j = 1; j <= min(d, i); j = j + 1 {
      let mut mx = 0
      for k = i; k > 0; k = k - 1 {
        mx = max(mx, job_difficulty[k - 1])
        f[i][j] = min(f[i][j], f[k - 1][j - 1] + mx)
      }
    }
  }
  if f[n][d] < inf {
    f[n][d]
  } else {
    -1
  }
}
