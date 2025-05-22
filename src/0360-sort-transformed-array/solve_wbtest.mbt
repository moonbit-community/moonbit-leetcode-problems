test "example 1" {
  assert_eq!(
    sort_transformed_array([1, 2, 3, 4, 5], -1, 0, 0),
    [-5, -4, -3, -2, -1],
  )
}

test "example 2" {
  assert_eq!(sort_transformed_array([-4, -2, 2, 4], 1, 3, 5), [3, 9, 15, 33])
}

test "example 3" {
  assert_eq!(sort_transformed_array([-4, -2, 2, 4], -1, 0, 0), [-16, -4, 0, 0])
}
