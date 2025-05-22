///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn sort_points(points : Array[(Int, Int)]) -> Array[(Int, Int)] {
  let n = points.length()
  for i = 0; i < n; i = i + 1 {
    for j = 0; j < n - i - 1; j = j + 1 {
      if points[j].0 > points[j + 1].0 {
        let tmp = points[j]
        points[j] = points[j + 1]
        points[j + 1] = tmp
      }
    }
  }
  points
}

///|
fn max_width_of_vertical_area(points : Array[(Int, Int)]) -> Int {
  let sorted_points = sort_points(points)
  let mut ans = 0
  let n = sorted_points.length()
  for i = 1; i < n; i = i + 1 {
    ans = max(ans, sorted_points[i].0 - sorted_points[i - 1].0)
  }
  ans
}
