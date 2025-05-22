///|
test "example 1" {
  assert_eq!(replace_digits_with_characters("a1c1e1"), "abcdef")
}

///|
test "example 2" {
  assert_eq!(replace_digits_with_characters("a1b2c3d4e"), "abbdcfdhe")
}

///|
test "example 3" {
  assert_eq!(replace_digits_with_characters("x9y8z7"), "xizhyk")
}
