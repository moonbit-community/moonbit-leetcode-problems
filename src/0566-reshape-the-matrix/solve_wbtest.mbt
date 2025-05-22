test "example 1" {
  let mat : Matrix = Matrix::{ rows: 2, cols: 3, data: [[1, 2, 3], [4, 5, 6]] }
  let r = 3
  let c = 2
  let expected : Matrix = Matrix::{
    rows: r,
    cols: c,
    data: [[1, 2], [3, 4], [5, 6]],
  }
  assert_eq!(matrix_reshape(mat, r, c), expected)
}

test "example 2" {
  let mat : Matrix = Matrix::{ rows: 2, cols: 2, data: [[1, 2], [3, 4]] }
  let r = 1
  let c = 4
  let expected : Matrix = Matrix::{ rows: r, cols: c, data: [[1, 2, 3, 4]] }
  assert_eq!(matrix_reshape(mat, r, c), expected)
}

test "infeasible reshape" {
  let mat : Matrix = Matrix::{ rows: 2, cols: 2, data: [[1, 2], [3, 4]] }
  let r = 3
  let c = 3
  assert_eq!(matrix_reshape(mat, r, c), mat)
}
