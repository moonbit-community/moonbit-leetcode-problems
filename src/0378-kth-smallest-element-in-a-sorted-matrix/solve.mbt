///|
fn kth_smallest(matrix : Array[Array[Int]], k : Int) -> Int {
  let n : Int = matrix.length()
  let mut left : Int = matrix[0][0]
  let mut right : Int = matrix[n - 1][n - 1]
  while left < right {
    let mid : Int = (left + right) / 2
    if check(matrix, mid, k, n) {
      right = mid
    } else {
      left = mid + 1
    }
  }
  left
}

///|
fn check(matrix : Array[Array[Int]], mid : Int, k : Int, n : Int) -> Bool {
  let mut count : Int = 0
  for i = n - 1, j = 0; i >= 0 && j < n; {
    if matrix[i][j] <= mid {
      count = count + (i + 1)
      continue i, j + 1
    } else {
      continue i - 1, j
    }
  }
  count >= k
}
