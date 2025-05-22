///|
test "example 1" {
  let arr : Array[Int] = [2, 6, 4, 1]
  assert_eq!(three_consecutive_odds(arr), false)
}

///|
test "example 2" {
  let arr : Array[Int] = [1, 2, 34, 3, 4, 5, 7, 23, 12]
  assert_eq!(three_consecutive_odds(arr), true)
}
