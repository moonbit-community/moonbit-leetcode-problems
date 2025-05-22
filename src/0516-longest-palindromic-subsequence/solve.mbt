fn longest_palindrome_subseq(s : String) -> Int {
  let n = s.length()
  let dp : Array[Array[Int]] = Array::make(n, Array::make(n, 0))
  for i = 0; i < n; i = i + 1 {
    dp[i][i] = 1
  }
  for j = 1; j < n; j = j + 1 {
    for i = j - 1; i >= 0; i = i - 1 {
      if s[i] == s[j] {
        dp[i][j] = dp[i + 1][j - 1] + 2
      } else {
        dp[i][j] = max(dp[i + 1][j], dp[i][j - 1])
      }
    }
  }
  dp[0][n - 1]
}

fn max(x : Int, y : Int) -> Int {
  if x > y {
    x
  } else {
    y
  }
}
