///|
test "example 1" {
  assert_eq!(largest_merge("cabaa", "bcaaa"), "cbcabaaaaa")
}

///|
test "example 2" {
  assert_eq!(largest_merge("abcabc", "abdcaba"), "abdcabcabcaba")
}

///|
test "example 3" {
  assert_eq!(largest_merge("abc", "def"), "defabc")
}

///|
test "example 4" {
  assert_eq!(largest_merge("zzz", "zzz"), "zzzzzz")
}

///|
test "example 5" {
  assert_eq!(largest_merge("x", "y"), "yx")
}
