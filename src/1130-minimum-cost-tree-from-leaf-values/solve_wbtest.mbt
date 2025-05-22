///|
test "example 1" {
  assert_eq!(mct_from_leaf_values([6, 2, 4]), 32)
}

///|
test "example 2" {
  assert_eq!(mct_from_leaf_values([4, 11]), 44)
}

///|
test "example 3" {
  assert_eq!(mct_from_leaf_values([15, 13, 5, 3, 15]), 500)
}
