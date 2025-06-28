///|
test "example 1" {
  let nums : Array[Int] = [1, 4, 2, 5, 3]
  let expected = 11
  assert_eq(valid_subarrays(nums), expected)
}

///|
test "example 2" {
  let nums : Array[Int] = [3, 2, 1]
  let expected = 3
  assert_eq(valid_subarrays(nums), expected)
}

///|
test "example 3" {
  let nums : Array[Int] = [2, 2, 2]
  let expected = 6
  assert_eq(valid_subarrays(nums), expected)
}
