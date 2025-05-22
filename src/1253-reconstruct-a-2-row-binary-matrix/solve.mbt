///|
fn reconstruct_matrix(
  upper : Int,
  lower : Int,
  colsum : Array[Int]
) -> Array[Array[Int]] {
  let n = colsum.length()
  let ans : Array[Array[Int]] = Array::make(2, Array::make(n, 0))
  let mut upper = upper
  let mut lower = lower
  for j = 0; j < n; j = j + 1 {
    if colsum[j] == 2 {
      ans[0][j] = 1
      ans[1][j] = 1
      upper = upper - 1
      lower = lower - 1
    } else if colsum[j] == 1 {
      if upper > lower {
        ans[0][j] = 1
        upper = upper - 1
      } else {
        ans[1][j] = 1
        lower = lower - 1
      }
    }
    if upper < 0 || lower < 0 {
      break
    }
  }
  if upper == 0 && lower == 0 {
    ans
  } else {
    Array::make(0, Array::make(0, 0))
  }
}
