///|
test "reverse_example_1" {
  assert_eq!(reverse(123), 321)
}

///|
test "reverse_example_2" {
  assert_eq!(reverse(-123), -321)
}

///|
test "reverse_example_3" {
  assert_eq!(reverse(120), 21)
}

///|
test "reverse_overflow_positive" {
  assert_eq!(reverse(1_534_236_469), 0)
}

///|
test "reverse_overflow_negative" {
  assert_eq!(reverse(-1_534_236_469), 0)
}

///|
test "reverse_zero" {
  assert_eq!(reverse(0), 0)
}
