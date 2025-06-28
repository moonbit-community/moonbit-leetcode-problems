///|
test "example 1" {
  let arr1 = [2, 3, 1, 3, 2, 4, 6, 7, 9, 2, 19]
  let arr2 = [2, 1, 4, 3, 9, 6]
  assert_eq(relative_sort_array(arr1, arr2), [2, 2, 2, 1, 4, 3, 3, 9, 6, 7, 19])
}

///|
test "example 2" {
  let arr1 = [28, 6, 22, 8, 44, 17]
  let arr2 = [22, 28, 8, 6]
  assert_eq(relative_sort_array(arr1, arr2), [22, 28, 8, 6, 17, 44])
}
