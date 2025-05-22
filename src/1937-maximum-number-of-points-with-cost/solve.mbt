fn max_number_of_points_with_cost(points : Array[Array[Int]]) -> Int {
  let m = points.length()
  let n = points[0].length()
  let dp = Array::make(m, Array::make(n, 0))

  // Initialize the first row of dp
  for j = 0; j < n; j = j + 1 {
    dp[0][j] = points[0][j]
  }

  // Fill the dp array
  for i = 1; i < m; i = i + 1 {
    let left_max = Array::make(n, 0)
    let right_max = Array::make(n, 0)

    // Calculate left_max
    left_max[0] = dp[i - 1][0]
    for j = 1; j < n; j = j + 1 {
      left_max[j] = max(left_max[j - 1] - 1, dp[i - 1][j])
    }

    // Calculate right_max
    right_max[n - 1] = dp[i - 1][n - 1]
    for j = n - 2; j >= 0; j = j - 1 {
      right_max[j] = max(right_max[j + 1] - 1, dp[i - 1][j])
    }

    // Update dp[i][j] using left_max and right_max
    for j = 0; j < n; j = j + 1 {
      dp[i][j] = points[i][j] + max(left_max[j], right_max[j])
    }
  }

  // Find the maximum value in the last row
  let mut result = 0
  for j = 0; j < n; j = j + 1 {
    result = max(result, dp[m - 1][j])
  }
  result
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

// Test cases
