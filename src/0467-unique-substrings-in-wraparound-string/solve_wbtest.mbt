///|
test "example 1" {
  assert_eq!(find_substring_in_wrapround_string("a"), 1)
}

///|
test "example 2" {
  assert_eq!(find_substring_in_wrapround_string("cac"), 2)
}

///|
test "example 3" {
  assert_eq!(find_substring_in_wrapround_string("zab"), 6)
}
