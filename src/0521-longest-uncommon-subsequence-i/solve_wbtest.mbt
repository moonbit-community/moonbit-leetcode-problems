///|
test "example 1" {
  assert_eq(find_lus_length("aba", "cdc"), 3)
}

///|
test "example 2" {
  assert_eq(find_lus_length("aaa", "bbb"), 3)
}

///|
test "example 3" {
  assert_eq(find_lus_length("aaa", "aaa"), -1)
}
