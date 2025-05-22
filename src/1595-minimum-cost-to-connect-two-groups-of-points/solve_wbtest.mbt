///|
test "example 1" {
  let cost : Array[Array[Int]] = [[15, 96], [36, 2]]
  assert_eq!(connect_two_groups(cost), 17)
}

///|
test "example 2" {
  let cost : Array[Array[Int]] = [[1, 3, 5], [4, 1, 1], [1, 5, 3]]
  assert_eq!(connect_two_groups(cost), 4)
}
