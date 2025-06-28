///|
test "example_1" {
  let nums = [1, 2, 10, 5, 7]
  assert_eq(can_be_made_strictly_increasing(nums), true)
}

///|
test "example_2" {
  let nums = [2, 3, 1, 2]
  assert_eq(can_be_made_strictly_increasing(nums), false)
}

///|
test "example_3" {
  let nums = [1, 1, 1]
  assert_eq(can_be_made_strictly_increasing(nums), false)
}

///|
test "already_strictly_increasing" {
  let nums = [1, 2, 3, 4, 5]
  assert_eq(can_be_made_strictly_increasing(nums), true)
}

///|
test "cannot_be_made_strictly_increasing" {
  let nums = [5, 4, 3, 2, 1]
  assert_eq(can_be_made_strictly_increasing(nums), false)
}
