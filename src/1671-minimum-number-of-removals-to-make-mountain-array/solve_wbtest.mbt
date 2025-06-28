///|
test "example 1" {
  let nums : Array[Int] = [2, 1, 1, 5, 6, 2, 3, 1]
  let expected = 3
  assert_eq(minimum_mountain_removals(nums), expected)
}

///|
test "example 2" {
  let nums : Array[Int] = [4, 3, 2, 1, 1, 2, 3, 1]
  let expected = 4
  assert_eq(minimum_mountain_removals(nums), expected)
}

///|
test "example 3" {
  let nums : Array[Int] = [1, 3, 1]
  let expected = 0
  assert_eq(minimum_mountain_removals(nums), expected)
}
