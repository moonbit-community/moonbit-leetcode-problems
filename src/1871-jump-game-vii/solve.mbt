fn can_reach_last_index(s : String, min_jump : Int, max_jump : Int) -> Bool {
  let n = s.length()
  let dp = Array::make(n, false)
  dp[0] = true
  for i = 0; i < n; i = i + 1 {
    if dp[i] {
      for j = i + min_jump; j <= i + max_jump && j < n; j = j + 1 {
        if s[j] == '0' {
          dp[j] = true
        }
      }
    }
  }
  dp[n - 1]
}
