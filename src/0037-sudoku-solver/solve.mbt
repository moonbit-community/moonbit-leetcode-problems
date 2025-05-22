///|
pub fn solve_sudoku(board : Array[Array[Char]]) -> Unit {
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
        let new_digit = (digit + 1).to_string()[0]
        board[i][j] = new_digit
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
      if board[i][j] == '.' {
        spaces.push([i, j])
      } else {
        let digit = board[i][j].to_int() - '0'.to_int() - 1
        line[i][digit] = true
        column[j][digit] = true
        block[i / 3][j / 3][digit] = true
      }
    }
  }
  dfs(0)
}
