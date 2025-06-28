///|
test "example 1" {
  let relations : Array[Array[Int]] = [[1, 3], [2, 3]]
  assert_eq(minimum_semesters(3, relations), 2)
}

///|
test "example 2" {
  let relations : Array[Array[Int]] = [[1, 2], [2, 3], [3, 1]]
  assert_eq(minimum_semesters(3, relations), -1)
}
