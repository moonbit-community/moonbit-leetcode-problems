///|
fn n_queens(n : Int) -> Array[Array[String]] {
  let sol : Array[Array[String]] = []
  let queens = Array::make(n, -1)
  let columns : @hashset.T[Int] = @hashset.new()
  let diagonals1 : @hashset.T[Int] = @hashset.new()
  let diagonals2 : @hashset.T[Int] = @hashset.new()
  backtrack(sol, queens, n, 0, columns, diagonals1, diagonals2)
  sol
}

///|
fn backtrack(
  sol : Array[Array[String]],
  queens : Array[Int],
  n : Int,
  row : Int,
  columns : @hashset.T[Int],
  diagonals1 : @hashset.T[Int],
  diagonals2 : @hashset.T[Int]
) -> Unit {
  if row == n {
    let board = generate_board(queens, n)
    sol.push(board)
  } else {
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
      queens[row] = i
      columns.insert(i)
      diagonals1.insert(diagonal1)
      diagonals2.insert(diagonal2)
      backtrack(sol, queens, n, row + 1, columns, diagonals1, diagonals2)
      queens[row] = -1
      columns.remove(i)
      diagonals1.remove(diagonal1)
      diagonals2.remove(diagonal2)
    }
  }
}

///|
fn generate_board(queens : Array[Int], n : Int) -> Array[String] {
  let board : Array[String] = []
  for i = 0; i < n; i = i + 1 {
    let row = Array::make(n, '.')
    row[queens[i]] = 'Q'
    board.push(row.to_string())
  }
  board
}
