///|
test "example 1" {
  assert_eq(longest_str_chain(["a", "b", "ba", "bca", "bda", "bdca"]), 4)
}

///|
test "example 2" {
  assert_eq(longest_str_chain(["xbc", "pcxbcf", "xb", "cxbc", "pcxbc"]), 5)
}

///|
test "example 3" {
  assert_eq(longest_str_chain(["abcd", "dbqca"]), 1)
}
