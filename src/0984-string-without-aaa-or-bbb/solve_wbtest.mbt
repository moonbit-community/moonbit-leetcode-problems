///|
test "example 1" {
  assert_eq!(str_without_3a3b(1, 2), "bba")
}

///|
test "example 2" {
  assert_eq!(str_without_3a3b(4, 1), "aabaa")
}

///|
test "example 3" {
  assert_eq!(str_without_3a3b(3, 3), "ababab")
}
