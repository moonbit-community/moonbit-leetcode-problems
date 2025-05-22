///|
fn image_smoother(img : Array[Array[Int]]) -> Array[Array[Int]] {
  let m = img.length()
  let n = img[0].length()
  let ans : Array[Array[Int]] = Array::make(m, Array::make(n, 0))
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      let mut s = 0
      let mut cnt = 0
      for dx = -1; dx <= 1; dx = dx + 1 {
        for dy = -1; dy <= 1; dy = dy + 1 {
          let x = i + dx
          let y = j + dy
          if x >= 0 && x < m && y >= 0 && y < n {
            cnt = cnt + 1
            s = s + img[x][y]
          }
        }
      }
      ans[i][j] = s / cnt
    }
  }
  ans
}
