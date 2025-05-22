test "example 1" {
  assert_eq!(total_fruit([1, 2, 1]), 3)
}

test "example 2" {
  assert_eq!(total_fruit([0, 1, 2, 2]), 3)
}

test "example 3" {
  assert_eq!(total_fruit([1, 2, 3, 2, 2]), 4)
}

test "example 4" {
  assert_eq!(total_fruit([3, 3, 3, 1, 2, 1, 1, 2, 3, 3, 4]), 5)
}
