///|
test "example 1" {
  assert_eq(min_changes_to_make_alternating("0100"), 1)
}

///|
test "example 2" {
  assert_eq(min_changes_to_make_alternating("10"), 0)
}

///|
test "example 3" {
  assert_eq(min_changes_to_make_alternating("1111"), 2)
}

///|
test "additional example 1" {
  assert_eq(min_changes_to_make_alternating("0000"), 2)
}

///|
test "additional example 2" {
  assert_eq(min_changes_to_make_alternating("101010"), 0)
}

///|
test "additional example 3" {
  assert_eq(min_changes_to_make_alternating("11001100"), 4)
}
