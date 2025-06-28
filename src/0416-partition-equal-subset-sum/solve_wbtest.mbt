///|
test "example 1" {
  let nums : Array[Int] = [1, 5, 11, 5]
  assert_eq(can_partition(nums), true)
}

///|
test "example 2" {
  let nums : Array[Int] = [1, 2, 3, 5]
  assert_eq(can_partition(nums), false)
}
