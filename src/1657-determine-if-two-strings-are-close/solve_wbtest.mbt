///|
test "example 1" {
  assert_eq!(close_strings("abc", "bca"), true)
}

///|
test "example 2" {
  assert_eq!(close_strings("a", "aa"), false)
}

///|
test "example 3" {
  assert_eq!(close_strings("cabbba", "abbccc"), true)
}

///|
test "example 4" {
  assert_eq!(close_strings("cabbba", "aabbss"), false)
}
