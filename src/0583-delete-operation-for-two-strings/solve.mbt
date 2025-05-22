fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn min_distance(word1 : String, word2 : String) -> Int {
  let m : Int = word1.length()
  let n : Int = word2.length()
  let dp : Array[Array[Int]] = Array::make(m + 1, Array::make(n + 1, 0))
  let mut i : Int = 1
  while i <= m {
    dp[i][0] = i
    i = i + 1
  }
  let mut j : Int = 1
  while j <= n {
    dp[0][j] = j
    j = j + 1
  }
  i = 1
  while i <= m {
    j = 1
    while j <= n {
      if word1[i - 1] == word2[j - 1] {
        dp[i][j] = dp[i - 1][j - 1]
      } else {
        dp[i][j] = 1 + min(dp[i - 1][j], dp[i][j - 1])
      }
      j = j + 1
    }
    i = i + 1
  }
  dp[m][n]
}
