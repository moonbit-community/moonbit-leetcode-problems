///|
test "example 1" {
  assert_eq!(second_largest_digit_in_string("dfa12321afd"), 2)
}

///|
test "example 2" {
  assert_eq!(second_largest_digit_in_string("abc1111"), -1)
}

///|
test "example 3" {
  assert_eq!(second_largest_digit_in_string("xyz"), -1)
}

///|
test "example 4" {
  assert_eq!(second_largest_digit_in_string("9876543210"), 8)
}

///|
test "example 5" {
  assert_eq!(second_largest_digit_in_string("123456789"), 8)
}
