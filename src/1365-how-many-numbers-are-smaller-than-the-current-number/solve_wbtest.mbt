///|
test "example 1" {
  let nums : Array[Int] = [8, 1, 2, 2, 3]
  let expected : Array[Int] = [4, 0, 1, 1, 3]
  assert_eq!(smaller_numbers_than_current(nums), expected)
}

///|
test "example 2" {
  let nums : Array[Int] = [6, 5, 4, 8]
  let expected : Array[Int] = [2, 1, 0, 3]
  assert_eq!(smaller_numbers_than_current(nums), expected)
}

///|
test "example 3" {
  let nums : Array[Int] = [7, 7, 7, 7]
  let expected : Array[Int] = [0, 0, 0, 0]
  assert_eq!(smaller_numbers_than_current(nums), expected)
}
