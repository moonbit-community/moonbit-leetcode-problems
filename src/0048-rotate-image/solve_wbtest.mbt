///|
test "example 1" {
  let matrix = Matrix::{ elems: [[1, 2, 3], [4, 5, 6], [7, 8, 9]] }
  let expected = Matrix::{ elems: [[7, 4, 1], [8, 5, 2], [9, 6, 3]] }
  let result = rotate(matrix)
  assert_eq!(result, expected)
}

///|
test "example 2" {
  let matrix = Matrix::{
    elems: [[5, 1, 9, 11], [2, 4, 8, 10], [13, 3, 6, 7], [15, 14, 12, 16]],
  }
  let expected = Matrix::{
    elems: [[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]],
  }
  let result = rotate(matrix)
  assert_eq!(result, expected)
}
