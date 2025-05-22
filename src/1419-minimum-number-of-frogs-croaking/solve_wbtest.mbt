test "example 1" {
  assert_eq!(min_number_of_frogs("croakcroak"), 1)
}

test "example 2" {
  assert_eq!(min_number_of_frogs("crcoakroak"), -1)
}

test "example 3" {
  assert_eq!(min_number_of_frogs("croakcrook"), -1)
}

test "example 4" {
  assert_eq!(min_number_of_frogs("croakcroakcroakcroak"), 4)
}
