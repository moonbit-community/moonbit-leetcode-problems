///|
test "example 1" {
  let nums : Array[Int] = [3, 6, 9, 1]
  assert_eq!(maximum_gap(nums), 3)
}

///|
test "example 2" {
  let nums : Array[Int] = [10]
  assert_eq!(maximum_gap(nums), 0)
}
