///|
test "example 1" {
  let strs : Array[String] = ["aba", "cdc", "eae"]
  assert_eq(find_lus_length(strs), 3)
}

///|
test "example 2" {
  let strs : Array[String] = ["aaa", "aaa", "aa"]
  assert_eq(find_lus_length(strs), -1)
}
