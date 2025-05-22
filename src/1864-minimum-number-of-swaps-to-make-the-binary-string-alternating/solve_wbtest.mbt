///|
test "example_1" {
  assert_eq!(min_swaps_to_make_alternating("111000"), 1)
}

///|
test "example_2" {
  assert_eq!(min_swaps_to_make_alternating("010"), 0)
}

///|
test "example_3" {
  assert_eq!(min_swaps_to_make_alternating("1110"), -1)
}
