///|
test "test 1" {
  let result_list = nums_same_consec_diff(3, 7)
  let expect = [181, 292, 707, 818, 929] // sample expected output
  assert_eq(result_list.to_array(), expect)
}

///|
test "test 2" {
  let result_list = nums_same_consec_diff(2, 1)
  let expect = [
    10, 12, 21, 23, 32, 34, 43, 45, 54, 56, 65, 67, 76, 78, 87, 89, 98,
  ] // sample expected output
  assert_eq(result_list.to_array(), expect)
}
