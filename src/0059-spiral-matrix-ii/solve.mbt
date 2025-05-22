///|
pub fn generate_matrix(n : Int) -> Array[Array[Int]] {
  let ans = Array::makei(n, fn(_) { Array::make(n, 0) })
  let mut u = 0
  let mut d = n - 1
  let mut l = 0
  let mut r = n - 1
  let mut num = 1
  let tar = n * n
  while num <= tar {
    for i = l; i <= r; i = i + 1 {
      ans[u][i] = num
      num += 1
    }
    u += 1
    for i = u; i <= d; i = i + 1 {
      ans[i][r] = num
      num += 1
    }
    r -= 1
    for i = r; i >= l; i = i - 1 {
      ans[d][i] = num
      num += 1
    }
    d -= 1
    for i = d; i >= u; i = i - 1 {
      ans[i][l] = num
      num += 1
    }
    l += 1
  }
  ans
}
