///|
test "example_1" {
  let arr = [2, 2, 1, 2, 1]
  assert_eq!(max_element_after_decreasing_and_rearranging(arr), 2)
}

///|
test "example_2" {
  let arr = [100, 1, 1000]
  assert_eq!(max_element_after_decreasing_and_rearranging(arr), 3)
}

///|
test "example_3" {
  let arr = [1, 2, 3, 4, 5]
  assert_eq!(max_element_after_decreasing_and_rearranging(arr), 5)
}
