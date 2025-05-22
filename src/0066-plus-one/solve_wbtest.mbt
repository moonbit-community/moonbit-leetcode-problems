///|
test "example 1" {
  assert_eq!(plus_one([1, 2, 3]), [1, 2, 4])
}

///|
test "example 2" {
  assert_eq!(plus_one([4, 3, 2, 1]), [4, 3, 2, 2])
}

///|
test "example 3" {
  assert_eq!(plus_one([9, 9, 9]), [1, 0, 0, 0])
}
