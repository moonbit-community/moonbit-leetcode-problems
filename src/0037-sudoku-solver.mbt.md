---
difficulty: Hard
verified: true
---

# Sudoku Solver

Write a program to solve a Sudoku puzzle by filling the empty cells.

A sudoku solution must satisfy **all of the following rules**:

1. Each of the digits 1-9 must occur exactly once in each row.
2. Each of the digits 1-9 must occur exactly once in each column.
3. Each of the digits 1-9 must occur exactly once in each of the 9 3x3 sub-boxes of the grid.

The '.' character indicates empty cells.

## Suggested Approach

```mbt nocheck
pub fn solve_sudoku(board: Array[Array[Char]]) -> Unit {
  ...
}
```

## Solution

```mbt
pub fn solve_sudoku(board : Array[Array[String]]) -> Unit {
  let line = Array::makei(9, fn(_) { Array::make(9, false) })
  let column = Array::makei(9, fn(_) { Array::make(9, false) })
  let block = Array::makei(3, fn(_) {
    Array::makei(3, fn(_) { Array::make(9, false) })
  })
  let mut valid = false
  let spaces : Array[Array[Int]] = []
  fn dfs(pos : Int) {
    if pos == spaces.length() {
      valid = true
      return
    }
    let space = spaces[pos]
    let i = space[0]
    let j = space[1]
    for digit = 0; digit < 9; digit = digit + 1 {
      if not(line[i][digit]) &&
        not(column[j][digit]) &&
        not(block[i / 3][j / 3][digit]) {
        line[i][digit] = true
        column[j][digit] = true
        block[i / 3][j / 3][digit] = true
        let new_digit = digit + 1 + '0'
        board[i][j] = new_digit.unsafe_to_char().to_string()
        dfs(pos + 1)
        if valid {
          return
        }
        line[i][digit] = false
        column[j][digit] = false
        block[i / 3][j / 3][digit] = false
      }
    }
  }

  for i = 0; i < 9; i = i + 1 {
    for j = 0; j < 9; j = j + 1 {
      if board[i][j] == "." {
        spaces.push([i, j])
      } else {
        let digit = board[i][j].charcode_at(0) - '0' - 1
        line[i][digit] = true
        column[j][digit] = true
        block[i / 3][j / 3][digit] = true
      }
    }
  }
  dfs(0)
}
```

## Tests

```moonbit
test "example 1" {
  let board = [
    ["5", "3", ".", ".", "7", ".", ".", ".", "."],
    ["6", ".", ".", "1", "9", "5", ".", ".", "."],
    [".", "9", "8", ".", ".", ".", ".", "6", "."],
    ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
    ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
    ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
    [".", "6", ".", ".", ".", ".", "2", "8", "."],
    [".", ".", ".", "4", "1", "9", ".", ".", "5"],
    [".", ".", ".", ".", "8", ".", ".", "7", "9"],
  ]
  solve_sudoku(board)
  @json.inspect!(board, content=[
    ["5", "3", "4", "6", "7", "8", "9", "1", "2"],
    ["6", "7", "2", "1", "9", "5", "3", "4", "8"],
    ["1", "9", "8", "3", "4", "2", "5", "6", "7"],
    ["8", "5", "9", "7", "6", "1", "4", "2", "3"],
    ["4", "2", "6", "8", "5", "3", "7", "9", "1"],
    ["7", "1", "3", "9", "2", "4", "8", "5", "6"],
    ["9", "6", "1", "5", "3", "7", "2", "8", "4"],
    ["2", "8", "7", "4", "1", "9", "6", "3", "5"],
    ["3", "4", "5", "2", "8", "6", "1", "7", "9"],
  ])
}
```
