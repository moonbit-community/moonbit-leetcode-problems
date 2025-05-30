---
difficulty: Hard
verified: true
---

# Maximal Rectangle

Given a `rows x cols` binary `matrix` filled with 0's and 1's, find the largest rectangle containing only 1's and return its area.

## Suggested Approach

```mbt nocheck
pub fn maximal_rectangle(matrix: Array[Array[Char]]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn maximal_rectangle(matrix : Array[Array[String]]) -> Int {
  let m = matrix.length()
  if m == 0 {
    return 0
  }
  let n = matrix[0].length()
  let left = Array::makei(m, fn(_) { Array::make(n, 0) })
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if matrix[i][j] == "1" {
        if j == 0 {
          left[i][j] = 1
        } else {
          left[i][j] = left[i][j - 1] + 1
        }
      }
    }
  }
  let mut ret = 0
  for j = 0; j < n; j = j + 1 {
    let up = Array::make(m, 0)
    let down = Array::make(m, 0)
    let stack : Array[Int] = Array::new()
    for i = 0; i < m; i = i + 1 {
      while not(stack.is_empty()) &&
            left[stack.get(stack.length() - 1).or(0)][j] >= left[i][j] {
        stack.pop() |> ignore
      }
      up[i] = stack.get(stack.length() - 1).or(-1)
      stack.push(i)
    }
    stack.clear()
    for i = m - 1; i >= 0; i = i - 1 {
      while not(stack.is_empty()) &&
            left[stack[stack.length() - 1]][j] >= left[i][j] {
        stack.pop() |> ignore
      }
      down[i] = stack.get(stack.length() - 1).or(m)
      stack.push(i)
    }
    for i = 0; i < m; i = i + 1 {
      let height = down[i] - up[i] - 1
      let area = height * left[i][j]
      ret = @math.maximum(ret, area)
    }
  }
  ret
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(
    maximal_rectangle([
      ["1", "0", "1", "0", "0"],
      ["1", "0", "1", "1", "1"],
      ["1", "1", "1", "1", "1"],
      ["1", "0", "0", "1", "0"],
    ]),
    6,
  )
}

test "example 2" {
  assert_eq(maximal_rectangle([["1"]]), 1)
}

test "example 3" {
  assert_eq(maximal_rectangle([["0"]]), 0)
}
```
