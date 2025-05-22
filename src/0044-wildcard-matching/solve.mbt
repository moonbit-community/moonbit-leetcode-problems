fn is_match(s : String, p : String) -> Bool {
  let m = s.length()
  let n = p.length()
  let dp : Array[Array[Bool]] = Array::make(m + 1, Array::make(n + 1, false))
  dp[0][0] = true
  for j = 1; j <= n; j = j + 1 {
    if p[j - 1] == '*' {
      dp[0][j] = true
    } else {
      break
    }
  }
  for i = 1; i <= m; i = i + 1 {
    for j = 1; j <= n; j = j + 1 {
      if p[j - 1] == '*' {
        dp[i][j] = dp[i][j - 1] || dp[i - 1][j]
      } else if p[j - 1] == '?' || s[i - 1] == p[j - 1] {
        dp[i][j] = dp[i - 1][j - 1]
      }
    }
  }
  dp[m][n]
}
