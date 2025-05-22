///|
fn max_points(points : Array[Array[Int]]) -> Int {
  let n = points.length()
  let mut ans = 1
  for i = 0; i < n; i = i + 1 {
    let x1 = points[i][0]
    let y1 = points[i][1]
    for j = i + 1; j < n; j = j + 1 {
      let x2 = points[j][0]
      let y2 = points[j][1]
      let mut cnt = 2
      for k = j + 1; k < n; k = k + 1 {
        let x3 = points[k][0]
        let y3 = points[k][1]
        let a = (y2 - y1) * (x3 - x1)
        let b = (y3 - y1) * (x2 - x1)
        if a == b {
          cnt = cnt + 1
        }
      }
      ans = max(ans, cnt)
    }
  }
  ans
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
