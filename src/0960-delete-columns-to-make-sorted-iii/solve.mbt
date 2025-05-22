fn min_deletion_size(strs : Array[String]) -> Int {
  let n : Int = strs[0].length()
  let dp : Array[Int] = Array::make(n, 1)
  let mut mx : Int = 1
  for i = 1; i < n; i = i + 1 {
    let mut j : Int = 0
    while j < i {
      if check(i, j, strs) {
        dp[i] = max(dp[i], dp[j] + 1)
      }
      j = j + 1
    }
    mx = max(mx, dp[i])
  }
  n - mx
}

fn check(i : Int, j : Int, strs : Array[String]) -> Bool {
  let mut idx : Int = 0
  while idx < strs.length() {
    if strs[idx][i] < strs[idx][j] {
      return false
    }
    idx = idx + 1
  }
  true
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
