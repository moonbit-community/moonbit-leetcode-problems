test "example 1" {
  assert_eq!(my_atoi("42 "), 42)
}

test "example 2" {
  assert_eq!(my_atoi("   -42 "), -42)
}

test "example 3" {
  assert_eq!(my_atoi("4193 with words "), 4193)
}

test "example 4" {
  assert_eq!(my_atoi("words and 987 "), 0)
}

test "example 5" {
  assert_eq!(my_atoi("-91283472332 "), -2147483648)
}

test "example 6" {
  assert_eq!(my_atoi("3.14159 "), 3)
}

test "example 7" {
  assert_eq!(my_atoi(" "), 0)
}

test "example 8" {
  assert_eq!(my_atoi("+1 "), 1)
}
