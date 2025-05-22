test "reverse_integer_example_1" {
  assert_eq!(reverse_integer(123), 321)
}

test "reverse_integer_example_2" {
  assert_eq!(reverse_integer(-123), -321)
}

test "reverse_integer_example_3" {
  assert_eq!(reverse_integer(120), 21)
}

test "reverse_integer_overflow_positive" {
  assert_eq!(reverse_integer(1_534_236_469), 0)
}

test "reverse_integer_overflow_negative" {
  assert_eq!(reverse_integer(-1_534_236_469), 0)
}

test "reverse_integer_zero" {
  assert_eq!(reverse_integer(0), 0)
}
