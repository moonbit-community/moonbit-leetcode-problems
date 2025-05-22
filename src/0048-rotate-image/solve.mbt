struct Matrix {
  elems : Array[Array[Int]]
} derive(Eq, Show)

fn swap(a : Int, b : Int) -> (Int, Int) {
  (b, a)
}

fn rotate(matrix : Matrix) -> Matrix {
  let temp_matrix = Matrix::{ elems: matrix.elems }
  let n = temp_matrix.elems.length()
  let mut i = 0
  while i < n / 2 {
    let mut j = 0
    while j < n {
      let (new_a, new_b) = swap(
        temp_matrix.elems[i][j],
        temp_matrix.elems[n - i - 1][j],
      )
      temp_matrix.elems[i][j] = new_a
      temp_matrix.elems[n - i - 1][j] = new_b
      j = j + 1
    }
    i = i + 1
  }
  i = 0
  while i < n {
    let mut j = 0
    while j < i {
      let (new_a, new_b) = swap(
        temp_matrix.elems[i][j],
        temp_matrix.elems[j][i],
      )
      temp_matrix.elems[i][j] = new_a
      temp_matrix.elems[j][i] = new_b
      j = j + 1
    }
    i = i + 1
  }
  temp_matrix
}
