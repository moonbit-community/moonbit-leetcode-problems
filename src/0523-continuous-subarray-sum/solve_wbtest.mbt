test "example 1" {
  assert_eq!(sum_mod_k([23, 2, 4, 6, 7], 6), true)
}

test "example 2" {
  assert_eq!(sum_mod_k([23, 2, 6, 4, 7], 6), true)
}

test "example 3" {
  assert_eq!(sum_mod_k([23, 2, 6, 4, 7], 13), false)
}
