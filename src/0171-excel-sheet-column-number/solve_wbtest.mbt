///|
test "example 1" {
  assert_eq!(title_to_number("A"), 1)
}

///|
test "example 2" {
  assert_eq!(title_to_number("AB"), 28)
}

///|
test "example 3" {
  assert_eq!(title_to_number("ZY"), 701)
}
