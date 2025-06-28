///|
test "example 1" {
  assert_eq(longer_contiguous_segments_of_ones_than_zeros("1101"), true)
}

///|
test "example 2" {
  assert_eq(longer_contiguous_segments_of_ones_than_zeros("111000"), false)
}

///|
test "example 3" {
  assert_eq(longer_contiguous_segments_of_ones_than_zeros("110100010"), false)
}

///|
test "all ones" {
  assert_eq(longer_contiguous_segments_of_ones_than_zeros("11111"), true)
}

///|
test "all zeros" {
  assert_eq(longer_contiguous_segments_of_ones_than_zeros("00000"), false)
}

///|
test "alternating" {
  assert_eq(longer_contiguous_segments_of_ones_than_zeros("101010"), false)
}
