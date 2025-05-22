///|
test "n less than 4" {
  assert_eq!(integer_break(2), 1)
}

///|
test "n divisible by 3" {
  assert_eq!(integer_break(9), 27)
}

///|
test "n modulo 3 equals 1" {
  assert_eq!(integer_break(10), 36)
}

///|
test "n modulo 3 equals 2" {
  assert_eq!(integer_break(11), 54)
}
