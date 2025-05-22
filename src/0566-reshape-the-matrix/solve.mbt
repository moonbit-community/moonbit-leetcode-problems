///|
struct Matrix {
  rows : Int
  cols : Int
  data : Array[Array[Int]]
} derive(Eq, Show)

///|
fn matrix_reshape(mat : Matrix, r : Int, c : Int) -> Matrix {
  let m = mat.rows
  let n = mat.cols
  if m * n != r * c {
    return mat
  }
  let ans : Array[Array[Int]] = Array::make(r, Array::make(c, 0))
  let mut i = 0
  while i < m * n {
    ans[i / c][i % c] = mat.data[i / n][i % n]
    i = i + 1
  }
  Matrix::{ rows: r, cols: c, data: ans }
}
