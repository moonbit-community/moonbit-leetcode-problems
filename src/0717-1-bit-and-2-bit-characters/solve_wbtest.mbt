test "example 1" {
  assert_eq!(is_one_bit_character([1, 0, 0]), true)
}

test "example 2" {
  assert_eq!(is_one_bit_character([1, 1, 1, 0]), false)
}
