fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn sort_pairs(pairs : Array[Array[Int]]) -> Unit {
  // Bubble sort for simplicity
  let n = pairs.length()
  for i = 0; i < n; i = i + 1 {
    for j = 0; j < n - i - 1; j = j + 1 {
      if pairs[j][0] > pairs[j + 1][0] {
        // Swap pairs[j] and pairs[j+1]
        let temp = pairs[j]
        pairs[j] = pairs[j + 1]
        pairs[j + 1] = temp
      }
    }
  }
}

fn find_longest_chain(pairs : Array[Array[Int]]) -> Int {
  sort_pairs(pairs)
  let n = pairs.length()
  let dp : Array[Int] = Array::make(n, 1)
  let mut ans = 0
  for i = 0; i < n; i = i + 1 {
    let c = pairs[i][0]
    for j = 0; j < i; j = j + 1 {
      let b = pairs[j][1]
      if b < c {
        dp[i] = max(dp[i], dp[j] + 1)
      }
    }
    ans = max(ans, dp[i])
  }
  ans
}
