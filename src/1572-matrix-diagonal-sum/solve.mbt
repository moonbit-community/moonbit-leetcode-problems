fn diagonal_sum(mat : Array[Array[Int]]) -> Int {
  let mut ans = 0
  let n = mat.length()
  for i = 0; i < n; i = i + 1 {
    let j = n - i - 1
    ans = ans + mat[i][i] + if i == j { 0 } else { mat[i][j] }
  }
  ans
}
