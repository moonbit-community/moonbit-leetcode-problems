///|
test "test 1" {
  let a = "abc"
  let b = "cba"
  assert_eq!(check_palindrome_formation(a, b), true)
}

///|
test "test 2" {
  let a = "ab"
  let b = "bb"
  assert_eq!(check_palindrome_formation(a, b), true)
}

///|
test "test 3" {
  let a = "abc"
  let b = "def"
  assert_eq!(check_palindrome_formation(a, b), false)
}
