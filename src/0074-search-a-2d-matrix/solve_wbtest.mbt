test "example 1" {
  assert_eq!(
    search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 3),
    true,
  )
}

test "example 2" {
  assert_eq!(
    search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 13),
    false,
  )
}
