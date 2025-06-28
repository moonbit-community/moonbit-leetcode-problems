///|
test "add_strings example 1" {
  assert_eq(add_strings("11", "123"), "134")
}

///|
test "add_strings example 2" {
  assert_eq(add_strings("456", "77"), "533")
}

///|
test "sub_strings example 1" {
  assert_eq(sub_strings("123", "11"), "112")
}

///|
test "sub_strings example 2" {
  assert_eq(sub_strings("100", "100"), "0")
}
