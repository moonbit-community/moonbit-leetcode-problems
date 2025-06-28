///|
test "example 1" {
  assert_eq(has_at_most_one_segment_of_ones("1001"), false)
}

///|
test "example 2" {
  assert_eq(has_at_most_one_segment_of_ones("110"), true)
}

///|
test "example 3" {
  assert_eq(has_at_most_one_segment_of_ones("1"), true)
}

///|
test "example 4" {
  assert_eq(has_at_most_one_segment_of_ones("10"), true)
}

///|
test "example 5" {
  assert_eq(has_at_most_one_segment_of_ones("111000"), true)
}

///|
test "example 6" {
  assert_eq(has_at_most_one_segment_of_ones("1110001"), false)
}
