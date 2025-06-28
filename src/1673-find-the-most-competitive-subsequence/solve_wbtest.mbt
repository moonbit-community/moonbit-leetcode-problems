///|
test "example 1" {
  let nums : Array[Int] = [3, 5, 2, 6]
  let k = 2
  let expected : Array[Int] = [2, 6]
  assert_eq(most_competitive(nums, k), expected)
}

///|
test "example 2" {
  let nums : Array[Int] = [2, 4, 3, 3, 5, 4, 9, 6]
  let k = 4
  let expected : Array[Int] = [2, 3, 3, 4]
  assert_eq(most_competitive(nums, k), expected)
}
