///|
test "test 1" {
  let nums : Array[Int] = [1, 2, 2]
  assert_eq!(min_increment_for_unique(nums), 1)
}

///|
test "test 2" {
  let nums : Array[Int] = [3, 2, 1, 2, 1, 7]
  assert_eq!(min_increment_for_unique(nums), 6)
}

///|
test "test 3" {
  let nums : Array[Int] = [0]
  assert_eq!(min_increment_for_unique(nums), 0)
}
