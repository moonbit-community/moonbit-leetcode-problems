///|
test "example 1" {
  let arr : Array[Int] = [2, 1, 4, 7, 3, 2, 5]
  assert_eq!(longest_mountain(arr), 5)
}

///|
test "example 2" {
  let arr : Array[Int] = [2, 2, 2]
  assert_eq!(longest_mountain(arr), 0)
}
