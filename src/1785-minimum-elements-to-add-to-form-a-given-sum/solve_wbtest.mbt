///|
test "example 1" {
  let nums = [1, -1, 1]
  let limit = 3
  let goal = -4
  assert_eq(min_elements_to_add(nums, limit, goal), 2)
}

///|
test "example 2" {
  let nums = [1, -10, 9, 1]
  let limit = 100
  let goal = 0
  assert_eq(min_elements_to_add(nums, limit, goal), 1)
}

///|
test "example 3" {
  let nums = [5, -5, 5]
  let limit = 5
  let goal = 15
  assert_eq(min_elements_to_add(nums, limit, goal), 2)
}

///|
test "example 4" {
  let nums = [-1, -2, -3]
  let limit = 1
  let goal = -10
  assert_eq(min_elements_to_add(nums, limit, goal), 3)
}
