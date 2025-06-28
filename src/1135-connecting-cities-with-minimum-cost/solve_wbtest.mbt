///|
test "example 1" {
  let connections : Array[Array[Int]] = [[1, 2, 5], [1, 3, 6], [2, 3, 1]]
  assert_eq(minimum_cost(3, connections), 6)
}

///|
test "example 2" {
  let connections : Array[Array[Int]] = [[1, 2, 3], [3, 4, 4]]
  assert_eq(minimum_cost(4, connections), -1)
}
