fn check_valid_string(s : String) -> Bool {
  let n : Int = s.length()
  let dp : Array[Array[Bool]] = Array::make(n, Array::make(n, false))
  for i = 0; i < n; i = i + 1 {
    dp[i][i] = s[i] == '*'
  }
  for i = n - 2; i >= 0; i = i - 1 {
    for j = i + 1; j < n; j = j + 1 {
      let a : Char = s[i]
      let b : Char = s[j]
      dp[i][j] = (a == '(' || a == '*') && (b == '*' || b == ')') && (i + 1 == j ||
        dp[i + 1][j - 1])
      let mut k : Int = i
      while k < j && not(dp[i][j]) {
        dp[i][j] = dp[i][k] && dp[k + 1][j]
        k = k + 1
      }
    }
  }
  dp[0][n - 1]
}
