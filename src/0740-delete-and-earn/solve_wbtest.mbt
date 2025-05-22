///|
test "example 1" {
  let nums : Array[Int] = [3, 4, 2]
  assert_eq!(delete_and_earn(nums), 6)
}

///|
test "example 2" {
  let nums : Array[Int] = [2, 2, 3, 3, 3, 4]
  assert_eq!(delete_and_earn(nums), 9)
}
