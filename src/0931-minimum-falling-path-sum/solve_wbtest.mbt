///|
test "example 1" {
  let matrix : Array[Array[Int]] = [[2, 1, 3], [6, 5, 4], [7, 8, 9]]
  assert_eq!(min_falling_path_sum(matrix), 13)
}

///|
test "example 2" {
  let matrix : Array[Array[Int]] = [[-19, 57], [-40, -5]]
  assert_eq!(min_falling_path_sum(matrix), -59)
}

///|
test "example 3" {
  let matrix : Array[Array[Int]] = [[-48]]
  assert_eq!(min_falling_path_sum(matrix), -48)
}
