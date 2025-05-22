fn max_value(events : Array[Array[Int]], k : Int) -> Int {
  // Sort events by their end day
  events.sort_by(fn(a, b) { a[1] - b[1] })
  let n = events.length()
  let dp = Array::make(n + 1, Array::make(k + 1, 0))
  for i = 1; i <= n; i = i + 1 {
    let event = events[i - 1]
    let start_day = event[0]
    let value = event[2]

    // Find the latest event that does not overlap with the current event
    let mut prev_event = 0
    for j = i - 1; j >= 1; j = j - 1 {
      if events[j - 1][1] < start_day {
        prev_event = j
        break
      }
    }
    for j = 1; j <= k; j = j + 1 {
      // Option 1: Do not attend the current event
      dp[i][j] = dp[i - 1][j]

      // Option 2: Attend the current event
      dp[i][j] = @math.maximum(dp[i][j], dp[prev_event][j - 1] + value)
    }
  }

  // The result is in dp[n][k]
  dp[n][k]
}
