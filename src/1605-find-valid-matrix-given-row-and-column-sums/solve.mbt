///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn restore_matrix(
  row_sum : Array[Int],
  col_sum : Array[Int]
) -> Array[Array[Int]] {
  let m = row_sum.length()
  let n = col_sum.length()
  let ans = Array::make(m, Array::make(n, 0))
  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      let x = min(row_sum[i], col_sum[j])
      ans[i][j] = x
      row_sum[i] = row_sum[i] - x
      col_sum[j] = col_sum[j] - x
      j = j + 1
    }
    i = i + 1
  }
  ans
}
