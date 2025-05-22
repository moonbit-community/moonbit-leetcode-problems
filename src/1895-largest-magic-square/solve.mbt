///|
fn is_magic_square(
  grid : Array[Array[Int]],
  x : Int,
  y : Int,
  size : Int
) -> Bool {
  let mut target_sum = 0
  for i = 0; i < size; i = i + 1 {
    target_sum = target_sum + grid[x + i][y + i]
  }

  // Check diagonals
  let mut diag1_sum = 0
  let mut diag2_sum = 0
  for i = 0; i < size; i = i + 1 {
    diag1_sum = diag1_sum + grid[x + i][y + i]
    diag2_sum = diag2_sum + grid[x + i][y + size - 1 - i]
  }
  if diag1_sum != target_sum || diag2_sum != target_sum {
    return false
  }

  // Check rows and columns
  for i = 0; i < size; i = i + 1 {
    let mut row_sum = 0
    let mut col_sum = 0
    for j = 0; j < size; j = j + 1 {
      row_sum = row_sum + grid[x + i][y + j]
      col_sum = col_sum + grid[x + j][y + i]
    }
    if row_sum != target_sum || col_sum != target_sum {
      return false
    }
  }
  return true
}

///|
fn largest_magic_square(grid : Array[Array[Int]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  let max_size = @math.minimum(m, n)
  for size = max_size; size > 1; size = size - 1 {
    for i = 0; i <= m - size; i = i + 1 {
      for j = 0; j <= n - size; j = j + 1 {
        if is_magic_square(grid, i, j, size) {
          return size
        }
      }
    }
  }
  return 1
}

// Test cases
