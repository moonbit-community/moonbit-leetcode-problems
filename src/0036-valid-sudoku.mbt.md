---
difficulty: Medium
verified: true
---

# Valid Sudoku

Determine if a `9 x 9` Sudoku board is valid. Only the filled cells need to be validated **according to the following rules**:

1. Each row must contain the digits `1-9` without repetition.
2. Each column must contain the digits `1-9` without repetition.
3. Each of the nine `3 x 3` sub-boxes of the grid must contain the digits `1-9` without repetition.

**Note:**

- A Sudoku board (partially filled) could be valid but is not necessarily solvable.
- Only the filled cells need to be validated according to the mentioned rules.

## Examples

### Example 1

Input: board =
[["5","3",".",".","7",".",".",".","."],
 ["6",".",".","1","9","5",".",".","."],
 [".","9","8",".",".",".",".","6","."],
 ["8",".",".",".","6",".",".",".","3"],
 ["4",".",".","8",".","3",".",".","1"],
 ["7",".",".",".","2",".",".",".","6"],
 [".","6",".",".",".",".","2","8","."],
 [".",".",".","4","1","9",".",".","5"],
 [".",".",".",".","8",".",".","7","9"]]
Output: true

### Example 2

Input: board =
[["8","3",".",".","7",".",".",".","."],
 ["6",".",".","1","9","5",".",".","."],
 [".","9","8",".",".",".",".","6","."],
 ["8",".",".",".","6",".",".",".","3"],
 ["4",".",".","8",".","3",".",".","1"],
 ["7",".",".",".","2",".",".",".","6"],
 [".","6",".",".",".",".","2","8","."],
 [".",".",".","4","1","9",".",".","5"],
 [".",".",".",".","8",".",".","7","9"]]
Output: false
Explanation: Same as Example 1, except with the **5** in the top left corner being modified to **8**. Since there are two 8's in the top left 3x3 sub-box, it is invalid.

## Constraints

- `board.length == 9`
- `board[i].length == 9`
- `board[i][j]` is a digit `1-9` or `'.'`.

## Suggested Approach

```mbt nocheck
pub fn is_valid_sudoku(board: Array[Array[Char]]) -> Bool {
  ...
}
```

## Solution

```mbt
pub fn is_valid_sudoku(board : Array[Array[String]]) -> Bool {
  // Check rows
  for i = 0; i < 9; i = i + 1 {
    let row_set : Array[Bool] = Array::make(9, false)
    for j = 0; j < 9; j = j + 1 {
      let cell = board[i][j]
      if cell != "." {
        let num = cell[0].to_int() - '0'.to_int() - 1
        if row_set[num] {
          return false
        } else {
          row_set[num] = true
        }
      }
    }
  }

  // Check columns
  for i = 0; i < 9; i = i + 1 {
    let col_set : Array[Bool] = Array::make(9, false)
    for j = 0; j < 9; j = j + 1 {
      let cell = board[j][i]
      if cell != "." {
        let num = cell[0].to_int() - '0'.to_int() - 1
        if col_set[num] {
          return false
        } else {
          col_set[num] = true
        }
      }
    }
  }

  // Check sub-boxes
  for i = 0; i < 3; i = i + 1 {
    for j = 0; j < 3; j = j + 1 {
      let sub_box_set : Array[Bool] = Array::make(9, false)
      for m = 3 * i; m < 3 * (i + 1); m = m + 1 {
        for n = 3 * j; n < 3 * (j + 1); n = n + 1 {
          let cell = board[m][n]
          if cell != "." {
            let num = cell[0].to_int() - '0'.to_int() - 1
            if sub_box_set[num] {
              return false
            } else {
              sub_box_set[num] = true
            }
          }
        }
      }
    }
  }
  true
}

// Additional tests
```

## Tests

```moonbit
test "valid sudoku with multiple empty cells" {
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
  assert_eq(is_valid_sudoku(board), true)
}

test "invalid sudoku with repeated number in a row" {
  let board = [
    ["5", "3", ".", ".", "7", ".", ".", ".", "5"], // repeated "5"
    ["6", ".", ".", "1", "9", "5", ".", ".", "."],
    [".", "9", "8", ".", ".", ".", ".", "6", "."],
    ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
    ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
    ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
    [".", "6", ".", ".", ".", ".", "2", "8", "."],
    [".", ".", ".", "4", "1", "9", ".", ".", "5"],
    [".", ".", ".", ".", "8", ".", ".", "7", "9"],
  ]
  assert_eq(is_valid_sudoku(board), false)
}

test "invalid sudoku with repeated number in a column" {
  let board = [
    ["5", "3", ".", ".", "7", ".", ".", ".", "."],
    ["6", ".", ".", "1", "9", "5", ".", ".", "."],
    [".", "9", "8", ".", ".", ".", ".", "6", "."],
    ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
    ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
    ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
    ["5", "6", ".", ".", ".", ".", "2", "8", "."], // repeated "5"
    [".", ".", ".", "4", "1", "9", ".", ".", "5"],
    [".", ".", ".", ".", "8", ".", ".", "7", "9"],
  ]
  assert_eq(is_valid_sudoku(board), false)
}
```
