///|
test "example 1" {
  assert_eq(can_split_into_descending_consecutive_values("1234"), false)
}

///|
test "example 2" {
  assert_eq(can_split_into_descending_consecutive_values("050043"), true)
}

///|
test "example 3" {
  assert_eq(can_split_into_descending_consecutive_values("9080701"), false)
}
