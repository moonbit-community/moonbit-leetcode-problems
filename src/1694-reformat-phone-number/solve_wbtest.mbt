///|
test "example 1" {
  assert_eq(reformat_number("1-23-45 6"), "123-456")
}

///|
test "example 2" {
  assert_eq(reformat_number("123 4-567"), "123-45-67")
}

///|
test "example 3" {
  assert_eq(reformat_number("123 4-5678"), "123-456-78")
}
