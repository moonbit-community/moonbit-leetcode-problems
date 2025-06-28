///|
test "example 1" {
  assert_eq(max_rep_opt1("ababa"), 3)
}

///|
test "example 2" {
  assert_eq(max_rep_opt1("aaabaaa"), 6)
}

///|
test "example 3" {
  assert_eq(max_rep_opt1("aaabbaaa"), 4)
}

///|
test "example 4" {
  assert_eq(max_rep_opt1("aaaaa"), 5)
}

///|
test "example 5" {
  assert_eq(max_rep_opt1("abcdef"), 1)
}
