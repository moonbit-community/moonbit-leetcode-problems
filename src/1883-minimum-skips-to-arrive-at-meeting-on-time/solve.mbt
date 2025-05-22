fn min_skips_to_arrive_at_meeting_on_time(
  dist : Array[Int],
  speed : Int,
  hours_before : Int
) -> Int {
  let n = dist.length()
  let eps = 1.0e-9
  let dp = Array::make(n + 1, Array::make(n + 1, 1.0e20))
  dp[0][0] = 0.0
  for i = 0; i < n; i = i + 1 {
    for j = 0; j <= i; j = j + 1 {
      let travel_time = dist[i].to_double() / speed.to_double()
      dp[i + 1][j] = min(dp[i + 1][j], ceil(dp[i][j] + travel_time - eps))
      dp[i + 1][j + 1] = min(dp[i + 1][j + 1], dp[i][j] + travel_time)
    }
  }
  for j = 0; j <= n; j = j + 1 {
    if dp[n][j] <= hours_before.to_double() {
      return j
    }
  }
  return -1
}

fn ceil(x : Double) -> Double {
  if x == x.floor() {
    return x
  } else {
    return x.floor() + 1.0
  }
}

fn min(a : Double, b : Double) -> Double {
  if a < b {
    return a
  } else {
    return b
  }
}

// Test cases
