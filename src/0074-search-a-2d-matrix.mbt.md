---
difficulty: Medium
verified: true
---

# Search 2D Matrix

You are given an m x n integer matrix `matrix` with the following two properties:

- Each row is sorted in non-decreasing order.
- The first integer of each row is greater than the last integer of the previous row.

Given an integer `target`, return true if target is in matrix or false otherwise.

You must write a solution in `O(log(m * n))` time complexity.

## Suggested Approach

```mbt nocheck
pub fn search_matrix(matrix: Array[Array[Int]], target: Int) -> Bool {
  ...
}
```

## Solution

```mbt
pub fn search_matrix(matrix : Array[Array[Int]], target : Int) -> Bool {
  let m = matrix.length()
  let n = matrix[0].length()
  let mut low = 0
  let mut high = m * n - 1
  while low <= high {
    let mid = (high - low) / 2 + low
    let x = matrix[mid / n][mid % n]
    if x < target {
      low = mid + 1
    } else if x > target {
      high = mid - 1
    } else {
      return true
    }
  }
  false
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(
    search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 3),
    true,
  )
}

test "example 2" {
  assert_eq(
    search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 13),
    false,
  )
}
```
