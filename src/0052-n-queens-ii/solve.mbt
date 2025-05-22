///|
fn n_queens_count(n : Int) -> Int {
  let columns : @hashset.T[Int] = @hashset.new()
  let diagonals1 : @hashset.T[Int] = @hashset.new()
  let diagonals2 : @hashset.T[Int] = @hashset.new()
  backtrack(n, 0, columns, diagonals1, diagonals2)
}

///|
fn backtrack(
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
