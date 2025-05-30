---
difficulty: Hard
verified: true
---

# N-Queens II

The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.

Given an integer `n`, return the number of distinct solutions to the n-queens puzzle.

## Suggested Approach

```mbt nocheck
pub fn total_n_queens(n: Int) -> Int {
  ...
}
```

## Solution

```mbt
pub fn total_n_queens(n : Int) -> Int {
  let columns : @hashset.T[Int] = @hashset.new()
  let diagonals1 : @hashset.T[Int] = @hashset.new()
  let diagonals2 : @hashset.T[Int] = @hashset.new()
  backtrack(n, 0, columns, diagonals1, diagonals2)
}

pub fn backtrack(
  n : Int,
  row : Int,
  columns : @hashset.T[Int],
  diagonals1 : @hashset.T[Int],
  diagonals2 : @hashset.T[Int]
) -> Int {
  if row == n {
    return 1
  } else {
    let mut count = 0
    for i = 0; i < n; i = i + 1 {
      if columns.contains(i) {
        continue i + 1
      }
      let diagonal1 = row - i
      if diagonals1.contains(diagonal1) {
        continue i + 1
      }
      let diagonal2 = row + i
      if diagonals2.contains(diagonal2) {
        continue i + 1
      }
      columns.insert(i)
      diagonals1.insert(diagonal1)
      diagonals2.insert(diagonal2)
      count += backtrack(n, row + 1, columns, diagonals1, diagonals2)
      columns.remove(i)
      diagonals1.remove(diagonal1)
      diagonals2.remove(diagonal2)
    }
    count
  }
}
```

## Tests

```moonbit
test "example 1" {
  assert_eq(total_n_queens(4), 2)
}

test "example 2" {
  assert_eq(total_n_queens(1), 1)
}
```
