///|
test "example 1" {
  assert_eq(calculate_time("abcdefghijklmnopqrstuvwxyz", "cba"), 4)
}

///|
test "example 2" {
  assert_eq(calculate_time("pqrstuvwxyzabcdefghijklmno", "leetcode"), 73)
}
