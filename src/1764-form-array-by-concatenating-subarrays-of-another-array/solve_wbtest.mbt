///|
test "example 1" {
  let groups = [[1, -1, -1], [3, -2, 0]]
  let nums = [1, -1, 0, 1, -1, -1, 3, -2, 0]
  assert_eq!(can_form_array(groups, nums), true)
}

///|
test "example 2" {
  let groups = [[10, -2], [1, 2, 3, 4]]
  let nums = [1, 2, 3, 4, 10, -2]
  assert_eq!(can_form_array(groups, nums), false)
}

///|
test "example 3" {
  let groups = [[1, 2, 3], [3, 4]]
  let nums = [7, 7, 1, 2, 3, 4, 7, 7]
  assert_eq!(can_form_array(groups, nums), false)
}
