///|
test "example 1" {
  let nums : Array[Int] = [10, 9, 2, 5, 3, 7, 101, 18]
  let result = length_of_lis(nums)
  assert_eq!(result, 4)
}

///|
test "example 2" {
  let nums : Array[Int] = [0, 1, 0, 3, 2, 3]
  let result = length_of_lis(nums)
  assert_eq!(result, 4)
}
