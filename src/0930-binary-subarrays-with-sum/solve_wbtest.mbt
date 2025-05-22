///|
test "example 1" {
  let nums : Array[Int] = [1, 0, 1, 0, 1]
  let goal = 2
  assert_eq!(num_subarrays_with_sum(nums, goal), 4)
}

///|
test "example 2" {
  let nums : Array[Int] = [0, 0, 0, 0, 0]
  let goal = 0
  assert_eq!(num_subarrays_with_sum(nums, goal), 15)
}

///|
test "example 3" {
  let nums : Array[Int] = [1, 1, 1, 1, 1]
  let goal = 3
  assert_eq!(num_subarrays_with_sum(nums, goal), 3)
}
