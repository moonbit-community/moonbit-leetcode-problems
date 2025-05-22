///|
test "example 1" {
  let points : Array[Array[Int]] = [[1, 1], [2, 3], [3, 2]]
  assert_eq!(is_boomerang(points), true)
}

///|
test "example 2" {
  let points : Array[Array[Int]] = [[1, 1], [2, 2], [3, 3]]
  assert_eq!(is_boomerang(points), false)
}
