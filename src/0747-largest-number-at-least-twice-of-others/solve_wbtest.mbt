///|
test "example 1" {
  assert_eq!(dominant_index([3, 6, 1, 0]), 1)
}

///|
test "example 2" {
  assert_eq!(dominant_index([1, 2, 3, 4]), -1)
}

///|
test "example 3" {
  assert_eq!(dominant_index([1]), 0)
}
