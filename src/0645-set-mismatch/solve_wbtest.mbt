///|
test "find_error_nums example 1" {
  assert_eq!(find_error_nums([1, 2, 2, 4]), [2, 3])
}

///|
test "find_error_nums example 2" {
  assert_eq!(find_error_nums([1, 1]), [1, 2])
}
