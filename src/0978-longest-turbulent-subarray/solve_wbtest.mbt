test "example 1" {
  assert_eq!(max_turbulence_size([9, 4, 2, 10, 7, 8, 8, 1, 9]), 5)
}

test "example 2" {
  assert_eq!(max_turbulence_size([4, 8, 12, 16]), 2)
}

test "example 3" {
  assert_eq!(max_turbulence_size([100]), 1)
}
