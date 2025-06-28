///|
test "example 1" {
  let target : Array[Int] = [1, 2, 3, 4]
  let arr : Array[Int] = [2, 4, 1, 3]
  assert_eq(can_be_equal(target, arr), true)
}

///|
test "example 2" {
  let target : Array[Int] = [7, 7, 7]
  let arr : Array[Int] = [7, 7, 7]
  assert_eq(can_be_equal(target, arr), true)
}

///|
test "example 3" {
  let target : Array[Int] = [1, 12, 3]
  let arr : Array[Int] = [12, 1, 2]
  assert_eq(can_be_equal(target, arr), false)
}
