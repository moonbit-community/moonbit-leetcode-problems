test "example 1" {
  let a = "abcd"
  let b = "cdabcdab"
  assert_eq!(repeated_string_match(a, b), 3)
}

test "example 2" {
  let a = "a"
  let b = "aa"
  assert_eq!(repeated_string_match(a, b), 2)
}

test "example 3" {
  let a = "a"
  let b = "a"
  assert_eq!(repeated_string_match(a, b), 1)
}

test "example 4" {
  let a = "abc"
  let b = "wxyz"
  assert_eq!(repeated_string_match(a, b), -1)
}
