test "example 1" {
  assert_eq!(num_of_burgers(16, 7), [1, 6])
}

test "example 2" {
  assert_eq!(num_of_burgers(17, 4), [])
}

test "example 3" {
  assert_eq!(num_of_burgers(4, 17), [])
}

test "example 4" {
  assert_eq!(num_of_burgers(0, 0), [0, 0])
}

test "example 5" {
  assert_eq!(num_of_burgers(2, 1), [0, 1])
}
