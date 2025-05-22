///|
struct Point {
  x : Double
  y : Double
}

///|
struct Circle {
  center : Point
  radius : Double
}

///|
fn distance(p1 : Point, p2 : Point) -> Double {
  let dx = p1.x - p2.x
  let dy = p1.y - p2.y
  (dx * dx + dy * dy).sqrt()
}

///|
fn is_inside_circle(circle : Circle, point : Point) -> Bool {
  distance(circle.center, point) <= circle.radius
}

///|
fn min_circle_trivial(points : Array[Point]) -> Circle {
  match points.length() {
    0 => Circle::{ center: Point::{ x: 0.0, y: 0.0 }, radius: 0.0 }
    1 => Circle::{ center: points[0], radius: 0.0 }
    2 => {
      let center_x = (points[0].x + points[1].x) / 2.0
      let center_y = (points[0].y + points[1].y) / 2.0
      let radius = distance(points[0], points[1]) / 2.0
      Circle::{ center: Point::{ x: center_x, y: center_y }, radius }
    }
    3 => {
      // Use the circumcircle of a triangle formula
      let (x1, y1) = (points[0].x, points[0].y)
      let (x2, y2) = (points[1].x, points[1].y)
      let (x3, y3) = (points[2].x, points[2].y)
      let d = 2.0 * (x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2))
      let ux = (
          (x1 * x1 + y1 * y1) * (y2 - y3) +
          (x2 * x2 + y2 * y2) * (y3 - y1) +
          (x3 * x3 + y3 * y3) * (y1 - y2)
        ) /
        d
      let uy = (
          (x1 * x1 + y1 * y1) * (x3 - x2) +
          (x2 * x2 + y2 * y2) * (x1 - x3) +
          (x3 * x3 + y3 * y3) * (x2 - x1)
        ) /
        d
      let center = Point::{ x: ux, y: uy }
      let radius = distance(center, points[0])
      Circle::{ center, radius }
    }
    _ => Circle::{ center: Point::{ x: 0.0, y: 0.0 }, radius: 0.0 }
  }
}

///|
fn welzl_helper(points : ArrayView[Point], boundary : Array[Point]) -> Circle {
  if points.length() == 0 || boundary.length() == 3 {
    return min_circle_trivial(boundary)
  }
  let p = points[0]
  let remaining_points = points[1:]
  let circle = welzl_helper(remaining_points, boundary)
  if is_inside_circle(circle, p) {
    return circle
  }
  let new_boundary = [..boundary, p]
  welzl_helper(remaining_points, new_boundary)
}

///|
fn find_min_circle(trees : Array[Array[Int]]) -> Array[Double] {
  let points = trees.map(fn(tree) {
    Point::{ x: tree[0].to_double(), y: tree[1].to_double() }
  })
  let circle = welzl_helper(
    points[:],
    Array::make(0, Point::{ x: 0.0, y: 0.0 }),
  )
  [circle.center.x, circle.center.y, circle.radius]
}

// Test cases
