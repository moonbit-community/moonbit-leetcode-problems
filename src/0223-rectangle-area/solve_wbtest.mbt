///|
test "example 1" {
  let area = compute_area(-3, 0, 3, 4, 0, -1, 9, 2)
  assert_eq(area, 45)
}

///|
test "example 2" {
  let area = compute_area(-2, -2, 2, 2, -2, -2, 2, 2)
  assert_eq(area, 16)
}
