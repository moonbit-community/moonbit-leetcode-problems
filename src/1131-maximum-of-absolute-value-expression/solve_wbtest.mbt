///|
test "example 1" {
  let arr1 : Array[Int] = [1, 2, 3, 4]
  let arr2 : Array[Int] = [-1, 4, 5, 6]
  assert_eq(max_abs_val_expr(arr1, arr2), 13)
}

///|
test "example 2" {
  let arr1 : Array[Int] = [1, -2, -5, 0, 10]
  let arr2 : Array[Int] = [0, -2, -1, -7, -4]
  assert_eq(max_abs_val_expr(arr1, arr2), 20)
}
