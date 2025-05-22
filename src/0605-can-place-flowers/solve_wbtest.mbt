test "example 1" {
  assert_eq!(can_place_flowers([1, 0, 0, 0, 1], 1), true)
}

test "example 2" {
  assert_eq!(can_place_flowers([1, 0, 0, 0, 1], 2), false)
}

test "example 3" {
  assert_eq!(can_place_flowers([0, 0, 1, 0, 1], 1), true)
}
