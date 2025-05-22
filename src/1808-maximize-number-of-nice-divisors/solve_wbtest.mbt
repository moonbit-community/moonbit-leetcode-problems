test "example 1" {
  assert_eq!(maximize_number_of_nice_divisors(5), 6)
}

test "example 2" {
  assert_eq!(maximize_number_of_nice_divisors(8), 18)
}

test "edge case 1" {
  assert_eq!(maximize_number_of_nice_divisors(1), 1)
}

test "large input" {
  assert_eq!(maximize_number_of_nice_divisors(1000000000), 666666670)
}
