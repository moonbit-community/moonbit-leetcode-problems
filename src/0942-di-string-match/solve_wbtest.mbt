test "example 1" {
  assert_eq!(di_string_match("IDID"), [0, 4, 1, 3, 2])
}

test "example 2" {
  assert_eq!(di_string_match("III"), [0, 1, 2, 3])
}

test "example 3" {
  assert_eq!(di_string_match("DDI"), [3, 2, 0, 1])
}
