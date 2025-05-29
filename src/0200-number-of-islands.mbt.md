---
difficulty: Medium
verified: true
---

# Add Two Numbers

You are given two **non-empty** linked lists representing two non-negative
integers. The digits are stored in **reverse order**, and each of their nodes
contains a single digit. Add the two numbers and return the sum as a linked
list.

You may assume the two numbers do not contain any leading zero, except the
number 0 itself.

**Example 1:**

**Input:** l1 = \[2,4,3\], l2 = \[5,6,4\]
**Output:** \[7,0,8\]
**Explanation:** 342 + 465 = 807.

**Example 2:**

**Input:** l1 = \[0\], l2 = \[0\]
**Output:** \[0\]

**Example 3:**

**Input:** l1 = \[9,9,9,9,9,9,9\], l2 = \[9,9,9,9\]
**Output:** \[8,9,9,9,0,0,0,1\]

**Constraints:**

* The number of nodes in each linked list is in the range `[1, 100]`.
* `0 <= Node.val <= 9`
* It is guaranteed that the list represents a number that does not have leading
  zeros.

## Suggested Approach

```moonbit nocheck
///|
pub fn num_islands(grid : Array[Array[String]]) -> Int {
  ...
}
```

## Solution

```moonbit
///|
fn dfs(grid : Array[Array[String]], i : Int, j : Int, m : Int, n : Int) -> Unit {
  grid[i][j] = "0" // Mark as visited
  let dirs = [-1, 0, 1, 0, -1]
  let mut k = 0
  while k < 4 {
    let x = i + dirs[k]
    let y = j + dirs[k + 1]
    if x >= 0 && x < m && y >= 0 && y < n && grid[x][y] == "1" {
      dfs(grid, x, y, m, n)
    }
    k = k + 1
  }
}

///|
pub fn num_islands(grid : Array[Array[String]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  let mut ans = 0
  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      if grid[i][j] == "1" {
        dfs(grid, i, j, m, n)
        ans = ans + 1
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}
```

## Tests

```moonbit
///|
test "example 1" {
  let grid : Array[Array[String]] = [
    ["1", "1", "1", "1", "0"],
    ["1", "1", "0", "1", "0"],
    ["1", "1", "0", "0", "0"],
    ["0", "0", "0", "0", "0"],
  ]
  let result = num_islands(grid)
  assert_eq!(result, 1)
}

///|
test "example 2" {
  let grid : Array[Array[String]] = [
    ["1", "1", "0", "0", "0"],
    ["1", "1", "0", "0", "0"],
    ["0", "0", "1", "0", "0"],
    ["0", "0", "0", "1", "1"],
  ]
  let result = num_islands(grid)
  assert_eq!(result, 3)
}
```
