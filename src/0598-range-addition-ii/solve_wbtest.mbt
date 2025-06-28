///|
test "example 1" {
  let m = 3
  let n = 3
  let ops : Array[Array[Int]] = [[2, 2], [3, 3]]
  assert_eq(max_count(m, n, ops), 4)
}

///|
test "example 2" {
  let m = 3
  let n = 3
  let ops : Array[Array[Int]] = []
  assert_eq(max_count(m, n, ops), 9)
}

///|
test "example 3" {
  let m = 4
  let n = 7
  let ops : Array[Array[Int]] = [[2, 2], [3, 4]]
  assert_eq(max_count(m, n, ops), 6)
}
