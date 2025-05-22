///|
test "example 1" {
  let arr1 : Array[Int] = [1, 1, 1, 1, 1]
  let arr2 : Array[Int] = [1, 0, 1]
  let expected : Array[Int] = [1, 0, 0, 0, 0]
  assert_eq!(add_negabinary(arr1, arr2), expected)
}

///|
test "example 2" {
  let arr1 : Array[Int] = [2, 7, 1]
  let arr2 : Array[Int] = [5, 8, 2, 6]
  let expected : Array[Int] = [7, 9, 4, 7]
  assert_eq!(add_negabinary(arr1, arr2), expected)
}
