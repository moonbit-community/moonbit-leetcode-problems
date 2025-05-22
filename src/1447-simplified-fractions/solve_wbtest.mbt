///|
test "example 1" {
  assert_eq!(simplified_fractions(3), ["1/2", "1/3", "2/3"])
}

///|
test "example 2" {
  assert_eq!(simplified_fractions(4), ["1/2", "1/3", "1/4", "2/3", "2/4", "3/4"])
}

///|
test "example 3" {
  assert_eq!(simplified_fractions(1), [])
}
