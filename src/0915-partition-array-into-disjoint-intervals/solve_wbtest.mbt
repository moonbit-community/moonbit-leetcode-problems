///|
test "example 1" {
  let nums : Array[Int] = [5, 0, 3, 8, 6]
  assert_eq!(partition_disjoint(nums), 3)
}

///|
test "example 2" {
  let nums : Array[Int] = [1, 1, 1, 0, 6, 12]
  assert_eq!(partition_disjoint(nums), 4)
}
