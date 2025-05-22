///|
test "example 1" {
  let nums = [4, 6, 15, 35]
  assert_eq!(largest_component_size(nums), 4)
}

///|
test "example 2" {
  let nums = [20, 5, 6, 7, 9, 11, 40]
  assert_eq!(largest_component_size(nums), 2)
}
