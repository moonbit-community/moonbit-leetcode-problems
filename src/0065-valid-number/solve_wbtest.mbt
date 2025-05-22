///|
test "example 1" {
  assert_eq!(is_number("0"), true)
}

///|
test "example 2" {
  assert_eq!(is_number("+3.14"), true)
}

///|
test "example 3" {
  assert_eq!(is_number("3e+7"), true)
}

///|
test "example 4" {
  assert_eq!(is_number("-1E-16"), true)
}

///|
test "example 5" {
  assert_eq!(is_number(".9"), true)
}
