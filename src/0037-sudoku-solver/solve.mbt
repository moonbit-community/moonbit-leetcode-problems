fn solve_sudoku(board : Array[Array[Char]]) -> Unit {
  let line = Array::make(9, Array::make(9, false))
  let column = Array::make(9, Array::make(9, false))
  let block = Array::make(3, Array::make(3, Array::make(9, false)))
  let mut valid = false
  let spaces : Array[Array[Int]] = []
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
  valid = dfs(board, 0, spaces, false, line, column, block)
}

fn dfs(
  board : Array[Array[Char]],
  pos : Int,
  spaces : Array[Array[Int]],
  valid : Bool,
  line : Array[Array[Bool]],
  column : Array[Array[Bool]],
  block : Array[Array[Array[Bool]]]
) -> Bool {
  if pos == spaces.length() {
    return true
  }
  let mut res = valid
  let space = spaces[pos]
  let i = space[0]
  let j = space[1]
  for digit = 0; digit < 9 && not(res); digit = digit + 1 {
    if not(line[i][digit]) && not(column[j][digit]) && not(
      block[i / 3][j / 3][digit],
    ) {
      line[i][digit] = true
      column[j][digit] = true
      block[i / 3][j / 3][digit] = true
      let new_digit = (digit + 1).to_string()[0]
      board[i][j] = new_digit
      res = dfs(board, pos + 1, spaces, res, line, column, block)
      line[i][digit] = false
      column[j][digit] = false
      block[i / 3][j / 3][digit] = false
    }
  }
  res
}
