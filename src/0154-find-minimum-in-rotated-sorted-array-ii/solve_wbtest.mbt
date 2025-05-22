///|
test "find_min" {
  let result_1 = find_min([3, 4, 5, 1, 2])
  assert_eq!(result_1, 1)
  let result_2 = find_min([4, 5, 6, 7, 0, 1, 2])
  assert_eq!(result_2, 0)
}
