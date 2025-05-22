///|
fn multiply(
  mat1 : Array[Array[Int]],
  mat2 : Array[Array[Int]]
) -> Array[Array[Int]] {
  let m : Int = mat1.length()
  let n : Int = mat2[0].length()
  let p : Int = mat2.length()
  let ans : Array[Array[Int]] = Array::make(m, Array::make(n, 0))
  let mut i : Int = 0
  while i < m {
    let mut j : Int = 0
    while j < n {
      let mut k : Int = 0
      while k < p {
        ans[i][j] = ans[i][j] + mat1[i][k] * mat2[k][j]
        k = k + 1
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}
