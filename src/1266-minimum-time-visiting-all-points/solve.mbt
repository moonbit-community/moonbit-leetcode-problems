///|
fn abs_diff(a : Int, b : Int) -> Int {
  if a > b {
    a - b
  } else {
    b - a
  }
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn min_time_to_visit_all_points(points : Array[Array[Int]]) -> Int {
  let mut ans = 0
  let mut i = 1
  while i < points.length() {
    let dx = abs_diff(points[i][0], points[i - 1][0])
    let dy = abs_diff(points[i][1], points[i - 1][1])
    ans = ans + max(dx, dy)
    i = i + 1
  }
  ans
}
