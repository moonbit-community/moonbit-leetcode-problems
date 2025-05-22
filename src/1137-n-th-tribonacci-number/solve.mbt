fn mul(a : Array[Array[Int]], b : Array[Array[Int]]) -> Array[Array[Int]] {
  let m = a.length()
  let n = b[0].length()
  let c : Array[Array[Int]] = Array::make(m, Array::make(n, 0))
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      let mut sum = 0
      for k = 0; k < b.length(); k = k + 1 {
        sum = sum + a[i][k] * b[k][j]
      }
      c[i][j] = sum
    }
  }
  c
}

fn pow(a : Array[Array[Int]], n : Int) -> Array[Array[Int]] {
  let mut a = a
  let mut res : Array[Array[Int]] = [[1, 1, 0]]
  let mut n = n
  while n > 0 {
    if n % 2 == 1 {
      res = mul(res, a)
    }
    a = mul(a, a)
    n = n / 2
  }
  res
}

fn tribonacci(n : Int) -> Int {
  if n == 0 {
    return 0
  }
  if n < 3 {
    return 1
  }
  let a : Array[Array[Int]] = [[1, 1, 0], [1, 0, 1], [1, 0, 0]]
  let result_matrix = pow(a, n - 3)
  let mut result = 0
  for i = 0; i < 3; i = i + 1 {
    let element = result_matrix[0][i]
    result = result + element
  }
  result
}
