///|
test "example 1" {
  let encoded = [3, 1]
  let expected = [1, 2, 3]
  assert_eq(decode_xored_permutation(encoded), expected)
}

///|
test "example 2" {
  let encoded = [6, 5, 4, 6]
  let expected = [2, 4, 1, 5, 3]
  assert_eq(decode_xored_permutation(encoded), expected)
}
