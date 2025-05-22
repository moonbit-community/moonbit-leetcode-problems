///|
test "example 1" {
  assert_eq!(sum_of_digits_in_base_k(34, 6), 9)
}

///|
test "example 2" {
  assert_eq!(sum_of_digits_in_base_k(10, 10), 1)
}

///|
test "additional example 1" {
  assert_eq!(sum_of_digits_in_base_k(100, 2), 3)
}

///|
test "additional example 2" {
  assert_eq!(sum_of_digits_in_base_k(29, 3), 5)
}
