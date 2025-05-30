---
difficulty: Medium
verified: true
---

# Spiral Matrix II

Given a positive integer `n`, generate an `n x n` `matrix` filled with elements from 1 to n^2 in spiral order.

## Suggested Approach

```mbt nocheck
pub fn generate_matrix(n: Int) -> Array[Array[Int]] {
  ...
}
```

## Solution

```mbt
pub fn generate_matrix(n : Int) -> Array[Array[Int]] {
  let ans = Array::makei(n, fn(_) { Array::make(n, 0) })
  let mut u = 0
  let mut d = n - 1
  let mut l = 0
  let mut r = n - 1
  let mut num = 1
  let tar = n * n
  while num <= tar {
    for i = l; i <= r; i = i + 1 {
      ans[u][i] = num
      num += 1
    }
    u += 1
    for i = u; i <= d; i = i + 1 {
      ans[i][r] = num
      num += 1
    }
    r -= 1
    for i = r; i >= l; i = i - 1 {
      ans[d][i] = num
      num += 1
    }
    d -= 1
    for i = d; i >= u; i = i - 1 {
      ans[i][l] = num
      num += 1
    }
    l += 1
  }
  ans
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(generate_matrix(3), [[1, 2, 3], [8, 9, 4], [7, 6, 5]])
}

test "example 2" {
  assert_eq(generate_matrix(1), [[1]])
}
```
