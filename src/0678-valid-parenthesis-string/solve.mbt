///|
fn check_valid_string(s : String) -> Bool {
  let n : Int = s.length()
  let dp : Array[Array[Bool]] = Array::make(n, Array::make(n, false))
  for i = 0; i < n; i = i + 1 {
    dp[i][i] = s.code_unit_at(i).to_int() == '*'.to_int()
  }
  for i = n - 2; i >= 0; i = i - 1 {
    for j = i + 1; j < n; j = j + 1 {
      let a = s.code_unit_at(i).to_int()
      let b = s.code_unit_at(j).to_int()
      dp[i][j] = (a == '('.to_int() || a == '*'.to_int()) &&
        (b == '*'.to_int() || b == ')'.to_int()) &&
        (i + 1 == j || dp[i + 1][j - 1])
      let mut k : Int = i
      while k < j && not(dp[i][j]) {
        dp[i][j] = dp[i][k] && dp[k + 1][j]
        k = k + 1
      }
    }
  }
  dp[0][n - 1]
}
