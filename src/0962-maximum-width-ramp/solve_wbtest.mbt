///|
test "example 1" {
  let nums : Array[Int] = [6, 0, 8, 2, 1, 5]
  assert_eq!(max_width_ramp(nums), 4)
}

///|
test "example 2" {
  let nums : Array[Int] = [9, 8, 1, 0, 1, 9, 4, 0, 4, 1]
  assert_eq!(max_width_ramp(nums), 7)
}
