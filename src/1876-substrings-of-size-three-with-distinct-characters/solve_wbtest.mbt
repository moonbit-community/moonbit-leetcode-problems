///|
test "example 1" {
  let s = "xyzzaz"
  assert_eq(count_good_substrings(s), 1)
}

///|
test "example 2" {
  let s = "aababcabc"
  assert_eq(count_good_substrings(s), 4)
}

///|
test "edge case 1" {
  let s = "a"
  assert_eq(count_good_substrings(s), 0)
}

///|
test "edge case 2" {
  let s = "abcd"
  assert_eq(count_good_substrings(s), 2)
}

///|
test "all distinct" {
  let s = "abcdef"
  assert_eq(count_good_substrings(s), 4)
}
