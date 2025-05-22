test "example 1" {
  assert_eq!(max_product([2, 3, -2, 4]), 6)
}

test "example 2" {
  assert_eq!(max_product([-2, 0, -1]), 0)
}

test "example 3" {
  assert_eq!(max_product([-2]), -2)
}
