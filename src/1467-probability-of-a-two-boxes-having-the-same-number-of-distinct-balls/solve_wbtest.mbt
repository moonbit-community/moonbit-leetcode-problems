test "example 1" {
  assert_eq!(get_probability([1, 1]), 1)
}

test "example 2" {
  assert_eq!(get_probability([2, 1, 1]), 6)
}

test "example 3" {
  assert_eq!(get_probability([1, 2, 3, 4]), 20)
}
