///|
fn distance(a : Array[Int], b : Array[Int]) -> Int {
  (a[0] - b[0]) * (a[0] - b[0]) + (a[1] - b[1]) * (a[1] - b[1])
}

///|
fn check(a : Array[Int], b : Array[Int], c : Array[Int]) -> Bool {
  let d1 = distance(a, b)
  let d2 = distance(a, c)
  let d3 = distance(b, c)
  if d1 == d2 && d1 + d2 == d3 && d1 > 0 {
    return true
  }
  if d1 == d3 && d1 + d3 == d2 && d1 > 0 {
    return true
  }
  if d2 == d3 && d2 + d3 == d1 && d2 > 0 {
    return true
  }
  return false
}

///|
fn valid_square(
  p1 : Array[Int],
  p2 : Array[Int],
  p3 : Array[Int],
  p4 : Array[Int]
) -> Bool {
  check(p1, p2, p3) &&
  check(p1, p3, p4) &&
  check(p1, p2, p4) &&
  check(p2, p3, p4)
}
