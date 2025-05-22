///|
test "examples" {
  assert_eq!(hamming_weight(11), 3) // Binary representation of 11 is 1011, which has 3 '1's.
  assert_eq!(hamming_weight(128), 1) // Binary representation of 128 is 10000000, which has 1 '1'.
  assert_eq!(hamming_weight(0), 0) // Binary representation of 0 is 0, which has 0 '1's.
}
