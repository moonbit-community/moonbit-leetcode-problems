///|
test "example 1" {
  let nums : Array[Int] = [1, 5, 1, 1, 6, 4]
  wiggle_sort(nums)
  // This is a possible solution, but due to the nature of the problem,
  // multiple correct arrangements exist, and this test might not match the actual output.
  assert_eq(nums, [1, 6, 1, 5, 1, 4])
}

///|
test "example 2" {
  let nums : Array[Int] = [1, 3, 2, 2, 3, 1]
  wiggle_sort(nums)
  // This is a possible solution, but due to the nature of the problem,
  // multiple correct arrangements exist, and this test might not match the actual output.
  assert_eq(nums, [2, 3, 1, 3, 1, 2])
}
