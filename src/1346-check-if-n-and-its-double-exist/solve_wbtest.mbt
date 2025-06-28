///|
test "example 1" {
  let arr : Array[Int] = [10, 2, 5, 3]
  assert_eq(check_if_exist(arr), true)
}

///|
test "example 2" {
  let arr : Array[Int] = [7, 1, 14, 11]
  assert_eq(check_if_exist(arr), true)
}

///|
test "example 3" {
  let arr : Array[Int] = [3, 1, 7, 11]
  assert_eq(check_if_exist(arr), false)
}
