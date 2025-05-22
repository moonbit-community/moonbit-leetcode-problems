test "example 1" {
  assert_eq!(k_length_apart([1, 0, 0, 0, 1, 0, 0, 1], 2), true)
}

test "example 2" {
  assert_eq!(k_length_apart([1, 0, 0, 1, 0, 1], 2), false)
}

test "example 3" {
  assert_eq!(k_length_apart([1, 1, 1, 1, 1], 0), true)
}

test "example 4" {
  assert_eq!(k_length_apart([0, 1, 0, 1], 1), true)
}
