///|
test "example 1" {
  assert_eq(can_split_into_three_palindromes("abcbdd"), true)
}

///|
test "example 2" {
  assert_eq(can_split_into_three_palindromes("bcbddxy"), false)
}

///|
test "example 3" {
  assert_eq(can_split_into_three_palindromes("aab"), true)
}

///|
test "example 4" {
  assert_eq(can_split_into_three_palindromes("abc"), false)
}

///|
test "example 5" {
  assert_eq(can_split_into_three_palindromes("racecar"), true)
}
