---
difficulty: Medium
verified: true
---

# Unique Paths II

You are given an `m * n` integer array grid. There is a robot initially located at the top-left corner (i.e., `grid[0][0]`). The robot tries to move to the bottom-right corner (i.e., `grid[m - 1][n - 1]`). The robot can only move either down or right at any point in time.

An obstacle and space are marked as 1 or 0 respectively in grid. A path that the robot takes cannot include any square that is an obstacle.

Return the number of possible unique paths that the robot can take to reach the bottom-right corner.

The testcases are generated so that the answer will be less than or equal to `2 * 10^9`.

Example 1:

Input: obstacleGrid = [[0,0,0],[0,1,0],[0,0,0]]
Output: 2
Explanation: There is one obstacle in the middle of the 3x3 grid above.
There are two ways to reach the bottom-right corner:

1. Right -> Right -> Down -> Down
2. Down -> Down -> Right -> Right

Example 2:

Input: obstacleGrid = [[0,1],[0,0]]
Output: 1

Constraints:

- `m == obstacleGrid.length`
- `n == obstacleGrid[i].length`
- `1 <= m, n <= 100`
- `obstacleGrid[i][j]` is 0 or 1.

## Suggested Approach

```mbt nocheck
pub fn unique_paths_with_obstacles(obstacleGrid: Array[Array[Int]]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn unique_paths_with_obstacles(obstacle_grid : Array[Array[Int]]) -> Int {
  let m = obstacle_grid.length()
  let n = obstacle_grid[0].length()
  let dp : Array[Array[Int]] = Array::makei(m, fn(_) { Array::make(n, 0) })
  let mut i = 0
  while i < m && obstacle_grid[i][0] == 0 {
    dp[i][0] = 1
    i = i + 1
  }
  let mut j = 0
  while j < n && obstacle_grid[0][j] == 0 {
    dp[0][j] = 1
    j = j + 1
  }
  for i = 1; i < m; i = i + 1 {
    for j = 1; j < n; j = j + 1 {
      if obstacle_grid[i][j] == 0 {
        dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
      }
    }
  }
  dp[m - 1][n - 1]
}
```

## Tests

```moonbit
test "example 1" {
  let obstacle_grid : Array[Array[Int]] = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
  assert_eq(unique_paths_with_obstacles(obstacle_grid), 2)
}

test "example 2" {
  let obstacle_grid : Array[Array[Int]] = [[0, 1], [0, 0]]
  assert_eq(unique_paths_with_obstacles(obstacle_grid), 1)
}
```
