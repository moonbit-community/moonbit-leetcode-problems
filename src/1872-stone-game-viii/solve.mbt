fn stone_game_viii(stones : Array[Int]) -> Int {
  let n = stones.length()
  let prefix_sums = Array::make(n + 1, 0)

  // Precompute prefix sums
  for i = 0; i < n; i = i + 1 {
    prefix_sums[i + 1] = prefix_sums[i] + stones[i]
  }

  // Initialize dp array
  let dp = Array::make(n, 0)
  dp[n - 1] = prefix_sums[n]

  // Iterate to fill dp array
  for i = n - 2; i >= 1; i = i - 1 {
    dp[i] = max(dp[i + 1], prefix_sums[i + 1] - dp[i + 1])
  }
  return dp[1]
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

// Test cases
