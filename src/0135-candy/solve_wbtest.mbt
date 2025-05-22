///|
test "candy test 1" {
  assert_eq!(candy([1, 0, 2]), 5)
}

///|
test "candy test 2" {
  assert_eq!(candy([1, 2, 2]), 4)
}

///|
test "candy test 3" {
  assert_eq!(candy([1, 3, 2, 2, 1]), 7)
}
