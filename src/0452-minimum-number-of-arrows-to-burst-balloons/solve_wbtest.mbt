///|
test "example 1" {
  let points : Array[Array[Int]] = [[10, 16], [2, 8], [1, 6], [7, 12]]
  assert_eq!(find_min_arrow_shots(points), 2)
}

///|
test "example 2" {
  let points : Array[Array[Int]] = [[1, 2], [3, 4], [5, 6], [7, 8]]
  assert_eq!(find_min_arrow_shots(points), 4)
}

///|
test "example 3" {
  let points : Array[Array[Int]] = [[1, 2], [2, 3], [3, 4], [4, 5]]
  assert_eq!(find_min_arrow_shots(points), 2)
}
