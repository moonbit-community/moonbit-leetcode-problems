///|
fn is_match(s : String, p : String) -> Bool {
  let s_len = s.length()
  let p_len = p.length()
  let dp = Array::makei(s_len + 1, fn(_) { Array::make(p_len + 1, false) })
  dp[0][0] = true
  for j = 1; j <= p_len; j = j + 1 {
    if p[j - 1] == '*' {
      dp[0][j] = dp[0][j - 2]
    }
  }
  for i = 1; i <= s_len; i = i + 1 {
    for j = 1; j <= p_len; j = j + 1 {
      if p[j - 1] == '.' || p[j - 1] == s[i - 1] {
        dp[i][j] = dp[i - 1][j - 1]
      } else if p[j - 1] == '*' {
        dp[i][j] = dp[i][j - 2]
        if p[j - 2] == '.' || p[j - 2] == s[i - 1] {
          dp[i][j] = dp[i][j] || dp[i - 1][j]
        }
      }
    }
  }
  dp[s_len][p_len]
}
