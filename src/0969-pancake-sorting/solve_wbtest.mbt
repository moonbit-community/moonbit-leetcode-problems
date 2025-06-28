///|
test "example 1" {
  let arr : Array[Int] = [3, 2, 4, 1]
  let expected : Array[Int] = [2, 3, 4, 2]
  assert_eq(pancake_sort(arr), expected)
}

///|
test "example 2" {
  let arr : Array[Int] = [1, 2, 3]
  let expected : Array[Int] = []
  assert_eq(pancake_sort(arr), expected)
}
