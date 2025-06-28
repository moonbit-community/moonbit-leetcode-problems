///|
test "example 1" {
  let nums : Array[Int] = [2, 5, 1, 3, 4, 7]
  let expected : Array[Int] = [2, 3, 5, 4, 1, 7]
  assert_eq(shuffle(nums, 3), expected)
}

///|
test "example 2" {
  let nums : Array[Int] = [1, 2, 3, 4, 4, 3, 2, 1]
  let expected : Array[Int] = [1, 4, 2, 3, 3, 2, 4, 1]
  assert_eq(shuffle(nums, 4), expected)
}
