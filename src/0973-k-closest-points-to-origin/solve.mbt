struct Point {
  x : Int
  y : Int
} derive(Eq, Show)

fn distance_squared(point : Point) -> Int {
  point.x * point.x + point.y * point.y
}

fn swap(points : Array[Point], i : Int, j : Int) -> Unit {
  let temp = points[i]
  points[i] = points[j]
  points[j] = temp
}

fn sort_by_distance(points : Array[Point]) -> Unit {
  let n = points.length()
  for i = 0; i < n; i = i + 1 {
    for j = i + 1; j < n; j = j + 1 {
      if distance_squared(points[i]) > distance_squared(points[j]) {
        swap(points, i, j)
      }
    }
  }
}

fn k_closest(points : Array[Point], k : Int) -> Array[Point] {
  sort_by_distance(points)
  let result : Array[Point] = Array::make(k, Point::{ x: 0, y: 0 })
  for i = 0; i < k; i = i + 1 {
    result[i] = points[i]
  }
  result
}
