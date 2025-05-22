///|
fn is_valid_sudoku(board : Array[Array[String]]) -> Bool {
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
