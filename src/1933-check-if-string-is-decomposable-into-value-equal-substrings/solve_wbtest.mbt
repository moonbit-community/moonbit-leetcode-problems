test "example 1" {
  assert_eq!(is_decomposable("000111000"), false)
}

test "example 2" {
  assert_eq!(is_decomposable("00011111222"), true)
}

test "example 3" {
  assert_eq!(is_decomposable("011100022233"), false)
}
