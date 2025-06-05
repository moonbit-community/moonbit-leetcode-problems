---
difficulty: Medium
verified: true
---

# Word Search

Given an m x n grid of characters board and a string word, return true if word exists in the grid.

The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.

## Suggested Approach

```mbt nocheck
pub fn exist(board: Array[Array[Char]], word: String) -> Bool {
  ...
}
```

## Solution

```mbt
pub fn exist(board : Array[Array[String]], word : String) -> Bool {
  let m = board.length()
  let n = board[0].length()
  let dirs = [-1, 0, 1, 0, -1]
  fn dfs(
    i : Int,
    j : Int,
    k : Int,
    board : Array[Array[String]],
    word : String,
    dirs : Array[Int],
    m : Int,
    n : Int
  ) -> Bool {
    if k == word.length() - 1 {
      return board[i][j].codepoint_at(0) == word.codepoint_at(k)
    }
    if board[i][j].codepoint_at(0) != word.codepoint_at(k) {
      return false
    }
    let c = board[i][j]
    board[i][j] = "0" // temporarily mark as visited
    let mut u = 0
    while u < 4 {
      let x = i + dirs[u]
      let y = j + dirs[u + 1]
      let ok = x >= 0 && x < m && y >= 0 && y < n
      if ok &&
        board[x][y].codepoint_at(0) != '0' &&
        dfs(x, y, k + 1, board, word, dirs, m, n) {
        return true
      }
      u = u + 1
    }
    board[i][j] = c // reset
    false
  }

  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      if dfs(i, j, 0, board, word, dirs, m, n) {
        return true
      }
      j = j + 1
    }
    i = i + 1
  }
  false
}
```

## Tests

```moonbit
test "example 1" {
  let board = [["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]]
  let word = "ABCCED"
  assert_eq(exist(board, word), true)
}

test "example 2" {
  let board = [["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]]
  let word = "SEE"
  assert_eq(exist(board, word), true)
}

test "example 3" {
  let board = [["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]]
  let word = "ABCB"
  assert_eq(exist(board, word), false)
}
```
