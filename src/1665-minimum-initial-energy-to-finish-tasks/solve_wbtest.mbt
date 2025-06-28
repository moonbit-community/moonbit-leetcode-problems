///|
test "example 1" {
  let tasks : Array[(Int, Int)] = [(1, 2), (2, 4), (4, 8)]
  assert_eq(minimum_effort(tasks), 8)
}

///|
test "example 2" {
  let tasks : Array[(Int, Int)] = [(10, 12), (20, 30), (10, 20)]
  assert_eq(minimum_effort(tasks), 32)
}
