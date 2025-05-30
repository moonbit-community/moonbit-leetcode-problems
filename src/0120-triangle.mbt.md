---
difficulty: Medium
verified: true
---

# Triangle

Given a triangle array, return the minimum path sum from top to bottom.

For each step, you may move to an adjacent number of the row below. More formally, if you are on index i on the current row, you may move to either index i or index i + 1 on the next row.

## Suggested Approach

```mbt nocheck
pub fn minimum_total(triangle: Array[Array[Int]]) -> Int {
  ...
}
```

## Solution

```mbt
pub fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

pub fn minimum_total(triangle : Array[Array[Int]]) -> Int {
  let triangle_mut = triangle // Assuming we can mutate it directly for simplicity
  let mut i = triangle_mut.length() - 2
  while i >= 0 {
    let mut j = 0
    while j <= i {
      triangle_mut[i][j] = triangle_mut[i][j] +
        min(triangle_mut[i + 1][j], triangle_mut[i + 1][j + 1])
      j = j + 1
    }
    i = i - 1
  }
  triangle_mut[0][0]
}
```

## Tests

```moonbit
test "example 1" {
  let triangle : Array[Array[Int]] = [[2], [3, 4], [6, 5, 7], [4, 1, 8, 3]]
  let result = minimum_total(triangle)
  assert_eq(result, 11)
}
```
