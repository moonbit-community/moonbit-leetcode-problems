///|
fn abs(x : Int) -> Int {
  if x < 0 {
    -x
  } else {
    x
  }
}

///|
fn find_nearest_point(x : Int, y : Int, points : Array[Array[Int]]) -> Int {
  let mut min_distance = 2_0000_0000
  let mut min_index = -1
  for i = 0; i < points.length(); i = i + 1 {
    let point = points[i]
    let ai = point[0]
    let bi = point[1]
    if ai == x || bi == y {
      let distance = abs(x - ai) + abs(y - bi)
      if distance < min_distance {
        min_distance = distance
        min_index = i
      }
    }
  }
  min_index
}
