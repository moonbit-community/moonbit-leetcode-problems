///|
fn max(values : Array[Int]) -> Int {
  let mut ans = 0
  let mut i = 0
  while i < values.length() {
    ans = if values[i] > ans { values[i] } else { ans }
    i = i + 1
  }
  ans
}

///|
fn longest_line(matrix : Array[Array[Int]]) -> Int {
  let m = matrix.length()
  let n = matrix[0].length()
  let a = Array::make(m + 2, Array::make(n + 2, 0))
  let b = Array::make(m + 2, Array::make(n + 2, 0))
  let c = Array::make(m + 2, Array::make(n + 2, 0))
  let d = Array::make(m + 2, Array::make(n + 2, 0))
  let mut ans = 0
  let mut i = 1
  while i <= m {
    let mut j = 1
    while j <= n {
      if matrix[i - 1][j - 1] == 1 {
        a[i][j] = a[i - 1][j] + 1
        b[i][j] = b[i][j - 1] + 1
        c[i][j] = c[i - 1][j - 1] + 1
        d[i][j] = d[i - 1][j + 1] + 1
        ans = max([a[i][j], b[i][j], c[i][j], d[i][j]])
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}
