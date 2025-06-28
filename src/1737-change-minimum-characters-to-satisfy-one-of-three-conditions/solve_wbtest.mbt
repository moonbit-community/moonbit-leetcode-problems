///|
test "example 1" {
  assert_eq(min_operations("aba", "caa"), 2)
}

///|
test "example 2" {
  assert_eq(min_operations("dabadd", "cda"), 3)
}

///|
test "example 3" {
  assert_eq(min_operations("a", "b"), 1)
}

///|
test "example 4" {
  assert_eq(min_operations("zzz", "zzz"), 0)
}

///|
test "example 5" {
  assert_eq(min_operations("abc", "def"), 3)
}
