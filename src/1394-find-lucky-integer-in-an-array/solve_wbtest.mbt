test "example 1" {
  assert_eq!(find_lucky([2, 2, 3, 4]), 2)
}

test "example 2" {
  assert_eq!(find_lucky([1, 2, 2, 3, 3, 3]), 3)
}

test "example 3" {
  assert_eq!(find_lucky([2, 2, 2, 3, 3]), -1)
}
