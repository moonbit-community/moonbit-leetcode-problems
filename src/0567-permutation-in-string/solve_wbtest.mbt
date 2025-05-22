///|
test "example 1" {
  assert_eq!(check_inclusion("ab", "eidbaooo"), true)
}

///|
test "example 2" {
  assert_eq!(check_inclusion("ab", "eidboaoo"), false)
}
