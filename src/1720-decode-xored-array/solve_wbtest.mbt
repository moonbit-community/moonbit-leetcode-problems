///|
test "example 1" {
  let encoded = [1, 2, 3]
  let first = 1
  let expected = [1, 0, 2, 1]
  assert_eq(decode_xored_array(encoded, first), expected)
}

///|
test "example 2" {
  let encoded = [6, 2, 7, 3]
  let first = 4
  let expected = [4, 2, 0, 7, 4]
  assert_eq(decode_xored_array(encoded, first), expected)
}

///|
test "edge case with single element" {
  let encoded = []
  let first = 5
  let expected = [5]
  assert_eq(decode_xored_array(encoded, first), expected)
}

///|
test "large numbers" {
  let encoded = [100000, 0, 100000]
  let first = 0
  let expected = [0, 100000, 100000, 0]
  assert_eq(decode_xored_array(encoded, first), expected)
}
