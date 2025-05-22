fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn lucky_numbers(matrix : Array[Array[Int]]) -> Array[Int] {
  let m = matrix.length()
  let n = matrix[0].length()
  let rows = Array::make(m, 2_0000_0000)
  let cols = Array::make(n, 0)
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      rows[i] = min(rows[i], matrix[i][j])
      cols[j] = max(cols[j], matrix[i][j])
    }
  }
  let ans = []
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if rows[i] == cols[j] {
        ans.push(rows[i])
      }
    }
  }
  ans
}
