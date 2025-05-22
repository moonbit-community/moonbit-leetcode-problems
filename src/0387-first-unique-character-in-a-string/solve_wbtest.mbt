test "example 1" {
  assert_eq!(first_uniq_char("leetcode"), 0)
}

test "example 2" {
  assert_eq!(first_uniq_char("loveleetcode"), 2)
}

test "example 3" {
  assert_eq!(first_uniq_char("aabb"), -1)
}
