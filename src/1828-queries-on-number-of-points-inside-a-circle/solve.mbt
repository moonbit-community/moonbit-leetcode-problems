fn is_point_inside_circle(point : (Int, Int), circle : (Int, Int, Int)) -> Bool {
  let (px, py) = point
  let (cx, cy, r) = circle
  let distance_squared = (px - cx) * (px - cx) + (py - cy) * (py - cy)
  distance_squared <= r * r
}

fn count_points_inside_circles(
  points : Array[(Int, Int)],
  queries : Array[(Int, Int, Int)]
) -> Array[Int] {
  let answer = Array::make(queries.length(), 0)
  for i = 0; i < queries.length(); i = i + 1 {
    let circle = queries[i]
    let mut count = 0
    for j = 0; j < points.length(); j = j + 1 {
      let point = points[j]
      if is_point_inside_circle(point, circle) {
        count = count + 1
      }
    }
    answer[i] = count
  }
  answer
}
