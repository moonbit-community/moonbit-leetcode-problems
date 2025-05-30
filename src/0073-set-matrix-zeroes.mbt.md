---
difficulty: Medium
verified: true
---

# Set Matrix Zeroes

Given a _m_ x _n_ matrix, if an element is 0, set its entire row and column to 0. Do it in-place.

## Suggested Approach

```mbt nocheck
pub fn set_zeroes(matrix: Array[Array[Int]]) -> Unit {
  ...
}
```

## Solution

```mbt
pub fn set_zeroes(matrix : Array[Array[Int]]) -> Unit {
  let m = matrix.length()
  let n = matrix[0].length()
  let row = Array::make(m, false)
  let col = Array::make(n, false)
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if matrix[i][j] == 0 {
        row[i] = true
        col[j] = true
      }
    }
  }
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if row[i] || col[j] {
        matrix[i][j] = 0
      }
    }
  }
}
```

## Tests

```moonbit
test "example 1" {
  let matrix = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
  set_zeroes(matrix)
  assert_eq(matrix, [[1, 0, 1], [0, 0, 0], [1, 0, 1]])
}

test "example 2" {
  let matrix = [[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]]
  set_zeroes(matrix)
  assert_eq(matrix, [[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]])
}
```
