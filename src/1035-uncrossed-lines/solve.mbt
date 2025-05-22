fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn max_uncrossed_lines(nums1 : Array[Int], nums2 : Array[Int]) -> Int {
  let m = nums1.length()
  let n = nums2.length()
  let dp : Array[Array[Int]] = Array::make(m + 1, Array::make(n + 1, 0))
  for i = 1; i <= m; i = i + 1 {
    for j = 1; j <= n; j = j + 1 {
      dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
      if nums1[i - 1] == nums2[j - 1] {
        dp[i][j] = dp[i - 1][j - 1] + 1
      }
    }
  }
  dp[m][n]
}
