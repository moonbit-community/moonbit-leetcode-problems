///|
test "example" {
  assert_eq!(reverse_bits(43261596), 964176192)
}

///|
test "example 2" {
  assert_eq!(
    reverse_bits(0b11111111111111111111111111111101),
    3221225471U.reinterpret_as_int(),
  )
}
