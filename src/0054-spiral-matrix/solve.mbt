///|
fn spiral_order(matrix : Array[Array[Int]]) -> Array[Int] {
  let ans : Array[Int] = []
  if matrix.length() == 0 {
    return ans
  }
  let mut u = 0
  let mut d = matrix.length() - 1
  let mut l = 0
  let mut r = matrix[0].length() - 1
  while true {
    for i = l; i <= r; i = i + 1 {
      ans.push(matrix[u][i])
    }
    u += 1
    if u > d {
      break
    }
    for i = u; i <= d; i = i + 1 {
      ans.push(matrix[i][r])
    }
    r -= 1
    if r < l {
      break
    }
    for i = r; i >= l; i = i - 1 {
      ans.push(matrix[d][i])
    }
    d -= 1
    if d < u {
      break
    }
    for i = d; i >= u; i = i - 1 {
      ans.push(matrix[i][l])
    }
    l += 1
    if l > r {
      break
    }
  }
  ans
}
